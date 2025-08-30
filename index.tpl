<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Brian McFee</title>
    <link rel="shortcut icon" href="favicon.ico">
    <!-- Tailwind via CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    crossorigin="anonymous"
    referrerpolicy="no-referrer"
  />
  </head>
  <body>
    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-TZYH0MJJ8M"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
      gtag('config', 'G-TZYH0MJJ8M');
    </script>

    <div class="flex container mx-auto py-8">
      <!-- Sidebar -->
      <aside id="navigator" class="md:w-1/4 md:pr-6 sticky md:top-20 self-start">
        <button class="md:hidden mb-4 px-3 py-2 bg-blue-600 text-white rounded" 
          onclick="navMobile.classList.toggle('hidden')">
            Menu
        </button>
        <nav id="navMobile" class="hidden md:block space-y-2 text-lg font-medium">
          <ul class="space-y-2 text-lg font-medium">
            <li><a href="#home"      class="block text-blue-600 hover:underline">Home</a></li>
            <li><hr class="border-t border-gray-300"></li>
            <li><a href="#pubs"      class="block text-blue-600 hover:underline">Publications</a></li>
            <li><hr class="border-t border-gray-300"></li>
            <li><a href="#resources" class="block text-blue-600 hover:underline">Software and data</a></li>
            <li><hr class="border-t border-gray-300"></li>
            <li><a href="#teaching"  class="block text-blue-600 hover:underline">Teaching</a></li>
          </ul>
        </nav>
      </aside>

      <!-- Main content -->
      <main class="w-3/4">
        <!-- Home panel -->
        <section id="home" class="bg-white rounded-lg shadow-sm hover:shadow-md transition-shadow p-6 mb-8">
          <img src="i/bmcfee14.jpg" alt="[me]" class="w-32 h-32 object-cover rounded-lg shadow float-right ml-4">
          <header class="mb-4">
            <h4 class="text-2xl font-semibold">
              Brian McFee <small class="text-gray-500">{{ email }}</small>
            </h4>
            <div class="flex items-center space-x-1">
              <a href="https://orcid.org/0000-0001-6261-9747" class="flex items-center text-blue-600 hover:underline">
                <img
                  src="https://orcid.org/sites/default/files/images/orcid_16x16.png"
                  alt="ORCID iD icon"
                  class="w-4 h-4"
                >
                <span class="ml-1">0000-0001-6261-9747</span>
              </a>
            </div>
          </header>
          <div class="text-gray-700 space-y-2">
            <p>
              Associate Professor of Music Technology and Data Science at
              <a href="http://www.nyu.edu/" class="text-blue-600 hover:underline">New York University</a>
            </p>
            <p>
              <a href="http://steinhardt.nyu.edu/music/" class="text-blue-600 hover:underline">
                Music and Performing Arts Professions
              </a>
              /
              <a href="https://steinhardt.nyu.edu/marl" class="text-blue-600 hover:underline">
                MARL
              </a>
              and
              <a href="http://cds.nyu.edu" class="text-blue-600 hover:underline">Center for Data Science</a>
            </p>
          </div>
          <div class="mt-4 prose prose-sm">
            <p>
              I develop machine learning tools to analyze music and multimedia data. 
            </p>
            <p>
              For a full history, here's my
              <a href="cv-brianmcfee.pdf" class="text-blue-600 hover:underline">
                curriculum vitæ
              </a>.
            </p>
          </div>
        </section>

        <!-- Ph.D. Students panel -->
        <section id="students" class="bg-white rounded-lg shadow-sm hover:shadow-md transition-shadow p-6 mb-8">
          <header class="mb-4">
            <h4 class="text-xl font-semibold">Ph.D. Students</h4>
          </header>
          <div class="text-gray-700">
            <ul class="list-disc list-inside">
              <li>
                <a href="https://tomxi.weebly.com/" class="text-blue-600 hover:underline">
                  Qingyang (Tom) Xi
                </a>
                (Music Technology)
              </li>
              <li> Marios Glytsos (Music Technology)</li>
              <li> Aramis Tanelus (Data Science)</li>
            </ul>
            <p class="mt-4 font-medium">Alumni:</p>
            <ul class="list-disc list-inside">
              <li>
                <a href="https://elenatheodora.com/" class="text-blue-600 hover:underline">
                  Dr. Elena Georgieva
                </a>, 2025 (Music Technology)
              </li>
              <li>
                <a href="https://chrisick.github.io/" class="text-blue-600 hover:underline">
                  Dr. Chris Ick
                </a>, 2025 (Data Science)
              </li>
              <li>
                <a href="https://morgan76.github.io/" class="text-blue-600 hover:underline">
                  Dr. Morgan Buisson
                </a>, 2024 (Télécom-Paris)
              </li>
              <!-- etc. -->
            </ul>
          </div>
        </section>

        <!-- Publications panel -->
        <section id="pubs" class="bg-white rounded-lg shadow-sm hover:shadow-md transition-shadow p-6 mb-8">
          <header class="mb-4">
            <h4 class="text-xl font-semibold">Publications</h4>
          </header>
          <div class="space-y-6" id="pubs">
            {% for pub in pubs %}
            <div class="odd:bg-gray-50 even:bg-white px-2 pub-item">
              <div class="ml-4 text-sm space-x-1">
                <div>
                  <div class="float-right">
                  {{ pub.date }}
                  </div>
                  <div style="font-size: 120%">
                            {{ pub.title }}
                  </div>
                  <div class="text-sm text-gray-600 float-right">
                    {% if pub.arxiv %}<a href="{{ pub.arxiv }}" class="text-blue-600 hover:underline" title="arXiv"><i class="fa fa-file" aria-hidden="true" role="img" aria-label="arχiv"></i></a>{% endif %}
                    {% if pub.doi %}<a href="{{ pub.doi }}" class="text-blue-600 hover:underline" title="DOI"><i class="fa fa-institution" aria-hidden="true" role="img"
                    aria-label="DOI"></i></a>{% endif %}     
                    {% if pub.video %}<a href="{{ pub.video }}" class="text-blue-600 hover:underline" title="video"><i class="fa fa-film" aria-hidden="true" role="img"
                    aria-label="video"></i></a>{% endif %}
                    {% if pub.slides %}<a href="{{ pub.slides }}" class="text-blue-600 hover:underline" title="slides"><i class="fa fa-bar-chart" aria-hidden="true" role="img"
                    aria-label="slides"></i></a>{% endif %}
                    {% if pub.poster %}<a href="{{ pub.poster }}" class="text-blue-600 hover:underline" title="poster"><i class="fa fa-photo"aria-hidden="true" role="img"
                    aria-label="poster"></i></a>{% endif %}
                    {% if pub.code %}<a href="{{ pub.code }}" class="text-blue-600 hover:underline" title="code"><i class="fa fa-code" aria-hidden="true" role="img"
                    aria-label="code"></i></a>{% endif %}
                    {% if pub.data %}<a href="{{ pub.data }}" class="text-blue-600 hover:underline" title="data"><i class="fa fa-database" aria-hidden="true" role="img"
                    aria-label="data"></i></a>{% endif %}
                    {% if pub.web %}<a href="{{ pub.web }}" class="text-blue-600 hover:underline" title="web"><i class="fa fa-link" aria-hidden="true" role="img" aria-label="web"></i></a>{% endif %}
                    {% if pub.bib %}<a href="{{ pub.bib }}" class="text-blue-600 hover:underline" title="bib"><i class="fa fa-quote-left" aria-hidden="true" role="img"
                    aria-label="bibliography"></i></a>{% endif %}
                    {% if pub.pdf %}<a href="{{ pub.pdf }}" class="text-blue-600 hover:underline" title="pdf"><i class="fa fa-file" aria-hidden="true" role="img" aria-label="PDF"></i></a>{% endif %}
                  </div>
                  {% if pub.notes %}<div class="text-sm text-bold float-right clear-right inline-block bg-blue-200 px-3 py-1 rounded-full">{{ pub.notes }}</div>{% endif %}
                  {% for a in pub.authors %}
                    {% if not loop.first %}
                      {% if loop.length == 2 %} and
                      {% elif loop.last %}, and
                      {% else %}, {% endif %}
                    {% endif %}
                    {% if authors[a].url %}
                      <a href="{{ authors[a].url }}" class="font-medium">{{ authors[a].name }}</a>
                    {% else %}
                      {{ authors[a].name }}
                    {% endif %}
                  {% endfor %}
                </div>
                <div class="text-gray-500">{{ pub.venue }}</div>
              </div>
              <div class="clear-both"></div>
            </div>
            {% endfor %}
          </div>
        </section>

<script>
document.addEventListener('DOMContentLoaded', () => {
  const container = document.querySelector('div#pubs');
  const items = Array.from(container.querySelectorAll('.pub-item'));
  const perPage = 20;
  let currentPage = 1;
  const totalPages = Math.ceil(items.length / perPage);

  // create two navs
  const navTop    = document.createElement('nav');
  const navBottom = document.createElement('nav');
  [navTop, navBottom].forEach(nav => {
    nav.className = 'flex space-x-2 justify-center mt-6';
  });

  function renderButtons() {
    [navTop, navBottom].forEach(nav => {
      nav.innerHTML = '';

      // Prev
      if (currentPage > 1) {
        const prev = document.createElement('button');
        prev.textContent   = '‹ Prev';
        prev.className     = 'px-3 py-1 bg-gray-200 rounded hover:bg-gray-300';
        prev.onclick       = () => { currentPage--; update(); };
        nav.append(prev);
      }

      // Page numbers
      for (let p = 1; p <= totalPages; p++) {
        const btn = document.createElement('button');
        btn.textContent = p;
        btn.className   = [
          'px-3 py-1 rounded',
          p === currentPage
            ? 'bg-blue-500 text-white'
            : 'bg-gray-100 text-gray-800 hover:bg-gray-200'
        ].join(' ');
        btn.onclick = () => { currentPage = p; update(); };
        nav.append(btn);
      }

      // Next
      if (currentPage < totalPages) {
        const next = document.createElement('button');
        next.textContent = 'Next ›';
        next.className   = 'px-3 py-1 bg-gray-200 rounded hover:bg-gray-300';
        next.onclick     = () => { currentPage++; update(); };
        nav.append(next);
      }
    });
  }

  function update() {
    items.forEach((el, i) => {
      const start = (currentPage - 1) * perPage;
      const end   = start + perPage;
      el.classList.toggle('hidden', i < start || i >= end);
    });
    renderButtons();
  }

  // insert navs
  container.insertBefore(navTop, container.firstChild);
  container.append(navBottom);

  // kick it off
  update();
});
</script>

        <!-- Software & Data panel -->
        <section id="resources" class="bg-white rounded-lg shadow-sm hover:shadow-md transition-shadow p-6 mb-8">
          <header class="mb-4"><h4 class="text-xl font-semibold">Software</h4></header>
          <dl class="grid grid-cols-2 gap-x-8 gap-y-4 mt-6">
            {% for item in software %}
            <dt class="font-semibold odd:bg-gray-50 even:bg-white">
              <a href="{{ item.url }}" class="text-blue-600 hover:underline">{{ item.name }}</a>
            </dt>
            <dd>{{ item.desc }}</dd>
            {% endfor %}
          </dl>
          <header class="mb-4"><h4 class="text-xl font-semibold">Data</h4></header>
          <dl class="grid grid-cols-2 gap-x-8 gap-y-4 mt-6">
            {% for item in data %}
            <dt class="font-semibold odd:bg-gray-50 even:bg-white">
              <a href="{{ item.url }}" class="text-blue-600 hover:underline">{{ item.name }}</a>
            </dt>
            <dd>{{ item.desc }}</dd>
            {% endfor %}
          </dl>
        </section>

        <!-- Teaching panel -->
        <section id="teaching" class="bg-white rounded-lg shadow-sm hover:shadow-md transition-shadow p-6 mb-8">
          <header class="mb-4"><h4 class="text-xl font-semibold">Teaching</h4></header>
          <dl class="space-y-2">
            {% for class in classes %}
            <div class="flex">
              <dt class="w-1/4 font-semibold">{{ class.date }}</dt>
              <dd class="w-3/4">
                {% if class.url %}
                  <a href="{{ class.url }}" class="text-blue-600 hover:underline">{{ class.desc }}</a>
                {% else %}
                  {{ class.desc }}
                {% endif %}
              </dd>
            </div>
            {% endfor %}
          </dl>
        </section>

      </main>
    </div>
  </body>
</html>
