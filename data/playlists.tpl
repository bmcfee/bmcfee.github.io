<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Brian McFee :: Art of the Mix 2003</title>
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/base.css" rel="stylesheet">
        <link rel="shortcut icon"   href="../favicon.ico">
        <script type="text/javascript" src="../analytics.js"></script>
    </head>

    <body>
        <div class="container col-sm-2 well well-sm">
            <nav role="navigation">
                <ul class="nav nav-staked">
                    <li><a href="../index.html">Home</a></li>
                </ul>
            </nav>
        </div>
        <div class="container col-sm-8">
            <div class="panel panel-default">
                <div class="panel-heading"><h4>The natural language of playlists</h4></div>
            
                <div class="panel-body">
                    <p>
                        This page contains the data and examples described in the paper cited below.  The playlist bigram collection is derived from the <a href="http://www.artofthemix.org/">Art of the Mix</a> playlist database, available <a href="http://labrosa.ee.columbia.edu/projects/musicsim/aotm.html">here</a>.  The data provided here is the subset of the Art of the Mix collection which coincides with the <a href="http://labrosa.ee.columbia.edu/millionsong/">Million Song Dataset</a>.
                    </p>
                    <p>
                        If you have any questions or comments, feel free to email the author at <a
                        href="mailto:{{ email }}">{{ email }}</a>
                    </p>
                </div>
            </div>

            <div class="panel panel-danger">
                <div class="panel-heading"><h4>Note</h4></div>
                <div class="panel-body">
                This data is provided only to facilitate comparison to prior work.  
                For new research, the <a
                href="aotm2011.html">AotM-2011</a>
                dataset is recommended instead.
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading"><h4>Bigram data</h4></div>
                <div class="panel-body">
                    <dl class="dl-horizontal">
                        <dt><a href="aotm-bigrams.csv.gz">aotm-bigrams.csv.gz</a></dt>
                        <dd>66250 song bigrams (869KB) [<a
                        href="aotm-bigrams.csv.gz.md5">md5</a>]</dd>
                    </dl>
                    <p>
                        Each line in <tt>aotm-bigrams.csv</tt> consists of an ordered pair <em>current song,next song</em>, identified by Echo Nest <a href="http://developer.echonest.com/docs/v4/track.html">track ID</a>.  For example:
                        <blockquote>
                            TRFHYOH128F9358CEF,TRWXAOC128F42553AE
                        </blockquote>
                        These track identifiers can be resolved to song titles by the Echo Nest developer API, or using the meta-data information provided with the <a href="http://labrosa.ee.columbia.edu/millionsong/">Million Song Dataset</a>.
                    </p>
                </div>
            </div>
    
            <div class="panel panel-default">
                <div class="panel-heading"><h4>References</h4></div>
                <div class="panel-body publications">
                    If you use this data, please cite the following paper:
                    <div style="margin-top: 10px">
                        <div class="pull-right">
                            <div>2011</div>
                            <div>
                                <a href="../papers/ismir2011_nlp.bib"><span class="glyphicon glyphicon-retweet" title="bib"></span><span class="sr-only">bib</span></a>
                                |<a href="../papers/ismir2011_nlp.pdf"><span class="glyphicon glyphicon-file" title="pdf"></span><span class="sr-only">pdf</span></a>
                            </div>
                        </div>
                        <div style="font-size: 120%">The natural language of playlists</div>
                        <div class="text-muted"><a href="../">McFee, B.</a> and <a href="http://cosmal.ucsd.edu/~gert/">Lanckriet, G.R.G.</a></div>
                        <div class="text-muted">12th International Society for Music Information Retrieval conference (ISMIR).</div>
                    </div>
                </div>
            </div>


            <div class="panel panel-default">
                <div class="panel-heading"><h4>Playlist examples</h4></div>

                <div class="panel-body">
                    <iframe src="http://gadget.playlistify.org/index.html?p=6226&amp;w=294" style="width: 300px; height: 539px; background:transparent;" scrolling="no" marginwidth="0" marginheight="0" frameborder="0" vspace="0" hspace="0" width="300" height="539"></iframe>
                    <iframe src="http://gadget.playlistify.org/index.html?p=6228&amp;w=294" style="width: 300px; height: 539px; background:transparent;" scrolling="no" marginwidth="0" marginheight="0" frameborder="0" vspace="0" hspace="0" width="300" height="539"></iframe>
                    <iframe src="http://gadget.playlistify.org/index.html?p=6231&amp;w=294" style="width: 300px; height: 539px; background:transparent;" scrolling="no" marginwidth="0" marginheight="0" frameborder="0" vspace="0" hspace="0" width="300" height="539"></iframe>
                    <iframe src="http://gadget.playlistify.org/index.html?p=6232&amp;w=294" style="width: 300px; height: 539px; background:transparent;" scrolling="no" marginwidth="0" marginheight="0" frameborder="0" vspace="0" hspace="0" width="300" height="539"></iframe>
                    <iframe src="http://gadget.playlistify.org/index.html?p=6233&amp;w=294" style="width: 300px; height: 539px; background:transparent;" scrolling="no" marginwidth="0" marginheight="0" frameborder="0" vspace="0" hspace="0" width="300" height="539"></iframe>
                    <iframe src="http://gadget.playlistify.org/index.html?p=6229&amp;w=294" style="width: 300px; height: 539px; background:transparent;" scrolling="no" marginwidth="0" marginheight="0" frameborder="0" vspace="0" hspace="0" width="300" height="539"></iframe>
                    <iframe src="http://gadget.playlistify.org/index.html?p=6234&amp;w=294" style="width: 300px; height: 539px; background:transparent;" scrolling="no" marginwidth="0" marginheight="0" frameborder="0" vspace="0" hspace="0" width="300" height="539"></iframe>
                    <iframe src="http://gadget.playlistify.org/index.html?p=6230&amp;w=294" style="width: 300px; height: 539px; background:transparent;" scrolling="no" marginwidth="0" marginheight="0" frameborder="0" vspace="0" hspace="0" width="300" height="539"></iframe>
                </div>
            </div>
        </div>
    </body>
</html>
