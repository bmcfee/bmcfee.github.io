<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Brian McFee :: Art of the Mix 2003</title>
    <link rel="shortcut icon" href="../favicon.ico">
    <!-- Tailwind via CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    <script type="text/javascript" src="../analytics.js"></script>
  </head>
  <body class="bg-gray-50 text-gray-900">
    <div class="container mx-auto px-4 py-8 flex flex-col md:flex-row md:space-x-8">
      <!-- Sidebar -->
      <aside class="w-full md:w-1/6 bg-white p-4 rounded-lg shadow-sm mb-6 md:mb-0">
        <nav role="navigation">
          <ul class="flex flex-col space-y-2 text-lg font-medium">
            <li>
              <a href="../index.html" class="text-blue-600 hover:underline">Home</a>
            </li>
          </ul>
        </nav>
      </aside>

      <!-- Main content -->
      <main class="w-full md:flex-1 space-y-6">
        <!-- The natural language of playlists -->
        <section class="bg-white p-6 rounded-lg shadow-sm">
          <h4 class="text-2xl font-semibold mb-4">The natural language of playlists</h4>
          <p class="text-gray-700">
            This page contains the data and examples described in the paper
            <a href="../papers/ismir2011_nlp.pdf" class="text-blue-600 hover:underline">
            “The natural language of playlists”
            </a>
            by McFee and Lanckriet and references the
            <a href="http://labrosa.ee.columbia.edu/millionsong/" class="text-blue-600 hover:underline">
            Million Song Dataset
            </a>.
          </p>
        </section>

        <!-- Data files -->
        <section class="bg-white p-6 rounded-lg shadow-sm">
          <h4 class="text-xl font-semibold mb-4">Data files</h4>
          <dl class="mb-4">
            <dt class="font-medium">
              <a href="aotm-bigrams.csv.gz" class="text-blue-600 hover:underline">
                aotm-bigrams.csv.gz
              </a>
            </dt>
            <dd class="ml-4 text-gray-600">
              66250 song bigrams (869KB) [<a href="aotm-bigrams.csv.gz.md5" class="text-blue-600 hover:underline">md5</a>]
            </dd>
          </dl>
          <p class="text-gray-700">
            Each line in <tt>aotm-bigrams.csv</tt> consists of an ordered pair of
            <a href="http://developer.echonest.com/docs/v4/track.html" class="text-blue-600 hover:underline">
            track ID
            </a>. For example:
          </p>
          <blockquote class="border-l-4 border-gray-300 pl-4 italic">
            TRFHYOH128F9358CEF,TRWXAOC128F42553AE
          </blockquote>
          <p class="text-gray-700">
            These track identifiers can be resolved to song titles by the
            <a href="http://labrosa.ee.columbia.edu/millionsong/" class="text-blue-600 hover:underline">
            Million Song Dataset
            </a>.
          </p>
        </section>

        <!-- References -->
        <section class="bg-white p-6 rounded-lg shadow-sm">
          <h4 class="text-xl font-semibold mb-4">References</h4>
          <p class="text-gray-700 mb-4">
            If you use this data, please cite the following paper:
          </p>
          <div class="flex items-start mb-6">
            <div class="ml-auto">
              <div class="text-sm text-gray-500">2011</div>
              <div class="flex space-x-2">
                <a href="../papers/ismir2011_nlp.bib" class="text-blue-600 hover:underline">.bib</a> |
                <a href="../papers/ismir2011_nlp.pdf" class="text-blue-600 hover:underline">.pdf</a>
              </div>
            </div>
            <div class="ml-4 space-y-1">
              <div class="text-lg font-semibold">The natural language of playlists</div>
              <div class="text-gray-600">
                <a href="../" class="text-blue-600 hover:underline">McFee, B.</a> and
                <a href="http://cosmal.ucsd.edu/~gert/" class="text-blue-600 hover:underline">Lanckriet, G.R.G.</a>
              </div>
              <div class="text-gray-600">
                12th International Society for Music Information Retrieval conference (ISMIR).
              </div>
            </div>
          </div>
        </section>
      </main>
    </div>
  </body>
</html>
