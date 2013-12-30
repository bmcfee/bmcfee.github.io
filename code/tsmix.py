#!/usr/bin/env python

# CREATED:2009-11-22 23:40:13 by Brian McFee <bmcfee@cs.ucsd.edu>
#  Traveling Salesmix
#
#  Mixtape sequencer using Echo Nest timbre descriptors
#  Usage:
#       python tsmix.py < LIST_OF_FILES.txt > SORTED_PLAYLIST.txt
#
#
#  Requires: NumPy, python-graph, pyEchoNest
#


import sys
import pickle

from numpy import *
from pygraph import graph, algorithms
from pprint import pprint

from pyechonest import track, config

# Put your key here!
config.ECHO_NEST_API_KEY=""

Models = []

for file in sys.stdin:
    file = file.rstrip()
    sys.stderr.write("Analyzing %s\n" % file)
    t = track.Track(file)

    def model(myTrack):
        # YARR!  Shiver me timbres!
        Timbres = []
        for seg in myTrack.segments:
            Timbres.append(seg['timbre'])
        Timbres = array(Timbres).T


        # Compute first derivative
        diffOperator = array([-1, 0, 1])
        
        DTimbres = []
        for i in range(shape(Timbres)[0]):
            DTimbres.append(convolve(Timbres[i,:], diffOperator, 'valid'))
        DTimbres = array(DTimbres)


        # Compute second derivative
        DDTimbres = []
        for i in range(shape(DTimbres)[0]):
            DDTimbres.append(convolve(DTimbres[i,:], diffOperator, 'valid'))
        DDTimbres = array(DDTimbres)

        Timbres = Timbres[:,2:-2]
        DTimbres = DTimbres[:,1:-1]

        
        # Glue together
        
        Timbres = concatenate((Timbres, DTimbres, DDTimbres),axis=0)

        # Fit the model
        C = cov(Timbres)
        M = mean(Timbres, 1)
        return {'mean': M, 'invcov': linalg.inv(C)}

    Models.append([file, model(t)])


# Calculate the probability product kernel between multivariate gaussians

def ppk(models, rho):

    def kernel(m1, m2):

        D       = len(m1['mean'])

        sigdag  = linalg.inv(m1['invcov'] + m2['invcov'])
        mudag   = dot(m1['invcov'], m1['mean']) + dot(m2['invcov'], m2['mean'])

        k       = (2 * pi) ** ((1 - 2 * rho) * D )
        k       = k * rho**(-D)
        k       = k * (linalg.det(m1['invcov']) ** rho )
        k       = k * (linalg.det(m2['invcov']) ** rho )
        k       = k * linalg.det(sigdag)
        k       = k * exp( - rho * dot(dot(m1['mean'], m1['invcov']), m1['mean']))
        k       = k * exp( - rho * dot(dot(m2['mean'], m2['invcov']), m2['mean']))
        k       = k * exp(  rho * dot(dot(mudag, sigdag), mudag))

        return sqrt(k)

    n = len(models)

    K = empty([n, n])

    for (i, m1) in zip(range(n), models):
        K[i,i] = 1
        for (j, m2) in zip(range(n), models)[i+1:]:
            K[i,j] = kernel(m1, m2)
            K[j,i] = K[i,j]
    return K


# Convert the kernel matrix to Euclidean distances
def gramToEDM(K):
    n = len(K)

    D = empty([n, n])

    for i in range(n):
        D[i,i] = 0
        for j in range(i+1, n):
            D[i,j] = K[i,i] + K[j,j] - K[i,j] - K[j,i]
            D[j,i] = D[i,j]
    return D


# PyGraph implementation of the MST 2-approx for TSP
def TSP(D, files):

    n = len(files)

    # Set up the graph

    G = graph()
    G.add_nodes(range(n))
    G.complete()

    for i in range(n):
        for j in range(i+1,n):
            G.set_edge_weight(i, j, sqrt(D[i,j]))

    sys.stderr.write("\tBuilding the MST\n")
    T = algorithms.minmax.minimal_spanning_tree(G)

    M = graph()
    M.add_nodes(range(n))
    M.add_spanning_tree(T)

    class tspApprox(object):
        def __init__(self):
            self.graph = None
            self.spanning_tree = None
            self.visited_set = set()
            self.path = []

        def configure(self, graph, spanning_tree):
            self.graph = graph
            self.spanning_tree = spanning_tree
        
        def __call__(self, node, parent):

            # Is the node visited already?  If not, add it
            if node not in self.visited_set:
                self.visited_set.add(node)
                self.path.append(node)

            return True
        
        def getPath(self):
            return self.path


    sys.stderr.write("\tGenerating the playlist\n")

    approximator = tspApprox()
    algorithms.searching.depth_first_search(M, 0, approximator)

    output = []
    for p in approximator.getPath():
        output.append(files[p])

    return output


# Build the kernel matrix
sys.stderr.write("Building the kernel matrix\n")

# K = ppk(Models.values(), 0.5)
K = ppk([model for (file,model) in Models], 0.5)


# Convert to a matrix of euclidean distances
sys.stderr.write("Building the distance matrix\n")
D = gramToEDM(K)

# Approximate the TSP
sys.stderr.write("Building the playlist...\n")
path = TSP(D, [file for (file,model) in Models])

for p in path:
    print p
