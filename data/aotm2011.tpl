<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Brian McFee :: Art of the Mix 2011</title>
  <link rel="shortcut icon" href="../favicon.ico">
  <!-- Tailwind via CDN -->
  <script src="https://cdn.tailwindcss.com"></script>
  <!-- Analytics -->
  <script src="../analytics.js" type="text/javascript"></script>
</head>
<body class="bg-gray-50 text-gray-900">
  <div class="min-h-screen flex flex-col">
    <div class="container mx-auto px-4 py-8 flex flex-col md:flex-row md:space-x-8">
      <!-- Sidebar -->
      <aside class="w-full md:w-1/6 bg-white p-4 rounded shadow-sm mb-6 md:mb-0">
        <nav role="navigation">
          <ul class="space-y-2">
            <li><a href="../index.html" class="text-blue-600 hover:underline">Home</a></li>
            <!-- other nav items -->
          </ul>
        </nav>
      </aside>

      <!-- Main Content -->
      <main class="w-full md:flex-1 space-y-8">
        <!-- Panel 1: AOTM-2011 -->
        <section class="bg-white p-6 rounded-lg shadow-sm">
          <h4 class="text-2xl font-semibold mb-4">AOTM-2011</h4>
          <div class="prose prose-sm text-gray-700 space-y-4">
            <p>
              This page contains the data and examples from the
              <a href="http://www.artofthemix.org/" class="text-blue-600 hover:underline">
                Art of the Mix
              </a>
              playlist database.
            </p>
            <p>
              AOTM-2011 spans the period from <code>1998-01-22</code> to <code>2011-06-17</code>.
              In all, it contains 101,343 unique playlists, each of which has had its songs matched to the Million Song Dataset (MSD). Approximately 98,000 songs were matched into MSD; please see the publication below for details.
            </p>
            <p>
              If you have any questions or comments, feel free to email the author at
              <a href="mailto:{{ email }}" class="text-blue-600 hover:underline">{{ email }}</a>.
            </p>
          </div>
        </section>

        <!-- Panel 2: Playlist data -->
        <section class="bg-white p-6 rounded-lg shadow-sm">
          <h4 class="text-xl font-semibold mb-4">Playlist data</h4>
          <dl class="mb-4">
            <dt class="font-medium">
              <a href="aotm2011_playlists.json.gz" class="text-blue-600 hover:underline">
                aotm2011_playlists.json.gz
              </a>
            </dt>
            <dd class="text-gray-600 ml-4">
              101,343 playlists (50 M)
              [<a href="aotm2011_playlists.json.gz.md5" class="text-blue-600 hover:underline">md5</a>]
            </dd>
          </dl>
          <p class="text-gray-700 mb-4">
            We provide the data in JSON format. The following Python code can be used to import the data.
          </p>
          <pre class="bg-gray-100 p-4 rounded overflow-auto font-mono text-sm mb-4">
import cjson
import gzip

with gzip.open('aotm2011_playlists.json.gz', 'r') as file_desc:
    playlists = cjson.decode(file_desc.read())
          </pre>
          <p class="text-gray-700">
            The variable <code class="bg-gray-200 px-1 rounded">playlists</code> will then contain a list of playlist objects.
          </p>
        </section>

        <!-- Panel 3: Fields of Each Playlist -->
        <section class="bg-white p-6 rounded-lg shadow-sm">
          <h4 class="text-xl font-semibold mb-4">Fields of Each Playlist</h4>
          <p class="text-gray-700 mb-4">
            Going through the fields of <code>P[0]</code>, we have the following:
          </p>
          <dl class="grid grid-cols-1 md:grid-cols-2 gap-x-8 gap-y-4">
            <div>
              <dt class="font-medium">category</dt>
              <dd class="text-gray-600 ml-4">
                A string describing the category of the playlist. There are about 40 unique categories.
              </dd>
            </div>
            <div>
              <dt class="font-medium">filtered_lists</dt>
              <dd class="text-gray-600 ml-4">
                An array of contiguous segments ... (see original for full description).
              </dd>
            </div>
            <div>
              <dt class="font-medium">mix_id</dt>
              <dd class="text-gray-600 ml-4">
                A unique numeric identifier for the playlist.
              </dd>
            </div>
            <div>
              <dt class="font-medium">playlist</dt>
              <dd class="text-gray-600 ml-4">
                An array containing the original playlist data ...
              </dd>
            </div>
            <div>
              <dt class="font-medium">timestamp</dt>
              <dd class="text-gray-600 ml-4">
                The time and date when the user uploaded the playlist.
              </dd>
            </div>
            <div>
              <dt class="font-medium">user</dt>
              <dd class="text-gray-600 ml-4">
                A dictionary containing information about the playlist’s author ...
              </dd>
            </div>
          </dl>
        </section>

        <!-- Panel 4: References -->
        <section class="bg-white p-6 rounded-lg shadow-sm">
          <h4 class="text-xl font-semibold mb-4">References</h4>
          <p class="text-gray-700 mb-4">
            If you use this data, please cite the following paper:
          </p>
          <div class="flex items-start">
            <div class="ml-auto text-right">
              <div class="text-sm text-gray-500">2011</div>
              <div class="space-x-2">
                <a href="../papers/ismir2012_hypergraph.bib" class="text-blue-600 hover:underline" title="bib">
                  .bib
                </a>
                <a href="../papers/ismir2012_hypergraph.pdf" class="text-blue-600 hover:underline" title="pdf">
                  .pdf
                </a>
              </div>
            </div>
            <div class="flex-1 ml-4">
              <div class="text-lg font-semibold">
                Hypergraph models of playlist dialects
              </div>
              <div class="text-gray-500">
              McFee, B. and Lanckriet, G.R.G.
              </div>
              <div class="text-gray-500">
                13th International Society for Music Information Retrieval Conference (ISMIR).
              </div>
            </div>
          </div>
        </section>
      </main>
    </div>
  </div>
</body>
</html>
