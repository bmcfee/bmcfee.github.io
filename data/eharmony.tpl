<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>Brian McFee :: eHarmony matchings</title>
  <link rel="shortcut icon" href="../favicon.ico" />

  <!-- Tailwind via CDN -->
  <script src="https://cdn.tailwindcss.com"></script>

</head>
<body class="bg-gray-50 text-gray-900">
  <div class="container mx-auto px-4 py-8 flex flex-col md:flex-row md:space-x-8">
    <!-- Sidebar -->
    <aside class="w-full md:w-1/6 mb-6 md:mb-0">
      <nav role="navigation">
        <ul class="space-y-2 text-lg font-medium">
          <li>
            <a href="../index.html" class="text-blue-600 hover:underline">Home</a>
          </li>
        </ul>
      </nav>
    </aside>

    <!-- Main content -->
    <main class="w-full md:flex-1 space-y-6">
      <!-- eHarmony matchings panel -->
      <section class="bg-white p-6 rounded-lg shadow-sm">
        <h4 class="text-2xl font-semibold mb-4">eHarmony matchings</h4>
        <p class="text-gray-700">
          This data set was provided by
          <a href="https://www.eharmony.com/" class="text-blue-600 hover:underline">eHarmony, Inc.</a>,
          and consists of two subsets corresponding to two equal-length segments of time.
          The data is stored in CSV files, organized as follows.
        </p>
        <dl class="grid grid-cols-1 md:grid-cols-2 gap-x-8 gap-y-4 mt-4">
          <div>
            <dt class="font-medium">EH-*-data.csv.gz</dt>
            <dd class="mt-1 text-gray-600">
              Each row describes an individual. The first column is an
              identification number for that individual, and subsequent columns are feature values.
            </dd>
          </div>
          <div>
            <dt class="font-medium">EH-*-labels.csv.gz</dt>
            <dd class="mt-1 text-gray-600">
            Each row describes a pairwise interaction. The first column indicates whether the interaction is positive (1) or negative (0). The second and third columns contain identification numbers for the corresponding individuals.
            </dd>
          </div>
        </dl>
      </section>

      <!-- Note panel -->
      <section class="bg-red-50 border border-red-200 p-6 rounded-lg">
        <h4 class="text-xl font-semibold mb-4 text-red-800">Note</h4>
        <p class="text-gray-700">
          To protect the privacy of users, all features have been obfuscated and normalized.
          I cannot provide names for the features.
        </p>
      </section>

      <!-- Download panel -->
      <section class="bg-white p-6 rounded-lg shadow-sm">
        <h4 class="text-xl font-semibold mb-4">Download</h4>
        <ul class="list-disc list-inside text-gray-700">
          <li>
            Slice 1:
            <a href="EH-slice1-data.csv.gz" class="text-blue-600 hover:underline">
              data
            </a>
            (9.7 MB,
            <a href="EH-slice1-data.csv.gz.md5" class="text-blue-600 hover:underline">md5</a>),
            <a href="EH-slice1-labels.csv.gz" class="text-blue-600 hover:underline">
              labels
            </a>
            (2.2 MB,
            <a href="EH-slice1-labels.csv.gz.md5" class="text-blue-600 hover:underline">md5</a>)
          </li>
          <li>
            Slice 2:
            <a href="EH-slice2-data.csv.gz" class="text-blue-600 hover:underline">
            data
            </a>
            (7.4 MB,
            <a href="EH-slice2-data.csv.gz.md5" class="text-blue-600
            hover:underline">md5</a>),
            <a href="EH-slice2-labels.csv.gz" class="text-blue-600 hover:underline">
            labels
            </a>
            (1.8 MB,
            <a href="EH-slice2-labels.csv.gz.md5" class="text-blue-600 hover:underline">md5</a>)
          </li>
        </ul>
      </section>

      <!-- References panel -->
      <section class="bg-white p-6 rounded-lg shadow-sm">
        <h4 class="text-xl font-semibold mb-4">References</h4>
        <p class="text-gray-700 mb-4">
          If you use this data, please cite the following paper:
        </p>
        <div class="flex items-start">
          <div class="ml-auto text-right">
            <div class="text-sm text-gray-500">2010</div>
            <div class="flex space-x-2 justify-end">
              <a
                href="../papers/mlr.bib"
                role="img"
                aria-label="bib"
                class="inline-block"
              >
              .bib
              </a>
              <a
                href="../papers/mlr.pdf"
                role="img"
                aria-label="pdf"
                class="inline-block"
              >
              .pdf
              </a>
            </div>
          </div>
          <div class="ml-4 flex-1 space-y-1">
            <div class="text-lg font-medium">Metric learning to rank</div>
            <div class="text-gray-600">
            McFee, B., & Lanckriet, G. R. G.
            </div>
            <div class="text-gray-600">
              Twenty-seventh International Conference on Machine Learning (ICML).
            </div>
          </div>
        </div>
      </section>

      <!-- Source code panel -->
      <section class="bg-white p-6 rounded-lg shadow-sm">
        <h4 class="text-xl font-semibold mb-4">Source code</h4>
        <p class="text-gray-700">
          The source code for MLR is now hosted on
          <a href="http://github.com/bmcfee/mlr" class="text-blue-600 hover:underline"
            >GitHub</a
          >.
        </p>
      </section>
    </main>
  </div>
</body>
</html>
