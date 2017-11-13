<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Brian McFee</title>

        <link rel="stylesheet"      href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet"      href="css/base.css">
        <link rel="shortcut icon"   href="favicon.ico">
        <script type="text/javascript" src="analytics.js"></script>
    </head>

    <body data-spy="scroll" data-target="#navigator">
        <div class="container col-sm-2 well well-sm" id="navigator">
            <nav role="navigation">
                <ul class="nav nav-stacked">
                    <li class="active"><a href="#home">Home</a></li>
                    <li class="divider"></li>
                    <li><a href="#pubs">Publications</a></li>
                    <li class="divider"></li>
                    <li><a href="#resources">Software and data</a></li>
                    <li class="divider"></li>
                    <li><a href="#teaching">Teaching</a></li>
                    <li class="divider"></li>
                    <li><a href="#hacks">Hacks</a></li>
                </ul>
            </nav>

        </div>
        <div class="container col-sm-8 col-sm-offset-2">
            <div class="panel panel-default main" id="home">
                <div class="panel-heading"><h4>Brian McFee <small>{{ email }}</small></h4>
            <h4><a href="https://orcid.org/0000-0001-6261-9747"
            target="_blank" rel="noopener noreferrer"
            style="vertical-align:top;"><img
            src="https://orcid.org/sites/default/files/images/orcid_16x16.png"
            style="width:1em;margin-right:.5em;" alt="ORCID iD
            icon">orcid.org/0000-0001-6261-9747</a></h4>
                
                </div>
                <div class="panel-body">
                    <img class="pull-right img-thumbnail" style="margin-left: 15px;" src="i/bmcfee13.png" alt="[me]">

                    <p>
                        I develop machine learning tools to analyze music and multimedia data.
                        This includes recommender systems, image and audio analysis, similarity learning, 
                        cross-modal feature integration, and automatic annotation.
                    </p>

                    <p>
                        As of Fall, 2014, I am a data science fellow at the <a href="http://cds.nyu.edu">Center
                        for Data Science</a> and <a href="http://steinhardt.nyu.edu/marl/">Music and Audio Research Lab</a> 
                            at <a href="http://www.nyu.edu/">New York University</a>.
                    </p>
                    <p>
                        Previously, I was a postdoctoral research scholar in the <a
                        href="http://jazz.columbia.edu/">Center for Jazz Studies</a> and <a
                        href="http://labrosa.ee.columbia.edu/">LabROSA</a> at <a
                        href="http://www.columbia.edu/">Columbia University</a>.  
                    </p>
                    <p>
                        Before that, I was advised by <a
                        href="http://cosmal.ucsd.edu/~gert/">Prof. Gert Lanckriet</a> in the <a
                        href="http://cosmal.ucsd.edu/cal">Computer Audition Lab</a> and <a
                        href="http://ai.ucsd.edu">Artificial Intelligence Group</a> at the <a
                        href="http://www.ucsd.edu">University of California, San&nbsp;Diego</a>.  
                    </p>
                    <p>
                        In May, 2012, I defended my dissertation, titled 
                            <em>More like this: machine learning approaches to music similarity</em> [<small><a
                            href="papers/bmcfee_dissertation.bib"><span class="glyphicon glyphicon-retweet" title="bib"></span><span class="sr-only">bib</span></a>|<a
                            href="papers/bmcfee_dissertation.pdf"><span class="glyphicon glyphicon-file" title="pdf"></span><span class="sr-only">pdf</span></a></small>].
                    </p>

                    <p>
                        For a full history, here's my <a href="cv-brianmcfee.pdf">curriculum vit&aelig;</a>.
                    </p>
                </div>
            </div>

            <div class="panel panel-default" id="pubs">
                <div class="panel-heading"><h4>Publications</h4></div>
            
                <div class="panel-body publications">
                {% for pub in pubs %}
                    <div>
                        <div style="float: right; text-align: right; margin-left: 6px">
                            <div> 
                                {{ pub.date }} 
                                <div>
                                {% if pub.video %}
                                    <a href="{{ pub.video }}"><span class="glyphicon glyphicon-film" title="video"></span><span class="sr-only">video</span></a> |
                                {% endif %}
                                {% if pub.slides %}
                                    <a href="{{ pub.slides }}"><span class="glyphicon glyphicon-list" title="slides"></span><span class="sr-only">slides</span></a> |
                                {% endif %}
                                {% if pub.poster %}
                                    <a href="{{ pub.poster }}"><span class="glyphicon glyphicon-picture" title="poster"></span><span class="sr-only">poster</span></a> |
                                {% endif %}
                                {% if pub.code %}
                                    <a href="{{ pub.code }}"><span class="glyphicon glyphicon-cog" title="code"></span><span class="sr-only">code</span></a> |
                                {% endif %}
                                {% if pub.data %}
                                    <a href="{{ pub.data }}"><span class="glyphicon glyphicon-folder-open" title="data"></span><span class="sr-only">data</span></a> |
                                {% endif %}
                                {% if pub.web %}
                                    <a href="{{ pub.web }}"><span class="glyphicon glyphicon-cloud" title="web"></span><span class="sr-only">web</span></a> |
                                {% endif %}
                                {% if pub.bib %}
                                    <a href="{{ pub.bib }}"><span class="glyphicon glyphicon-retweet" title="bib"></span><span class="sr-only">bib</span></a> | 
                                {% endif %}
                                {% if pub.pdf %}
                                    <a href="{{ pub.pdf }}"><span class="glyphicon glyphicon-file" title="pdf"></span><span class="sr-only">pdf</span></a>
                                {% endif %}
                                </div>
                                {% if pub.notes %}
                                    <span class="label label-info" style="text-align: right">{{ pub.notes }}</span>
                                {% endif %}
                            </div>
                        </div>
                        <div style="font-size: 120%">
                            {{ pub.title }}
                        </div>
                        <div class="text-muted">
                            {%- for a in pub.authors -%}
                                {%- if not loop.first -%}
                                    {%- if loop.length == 2 -%}
                                    &nbsp;and&nbsp;
                                    {%- elif loop.last -%}
                                    , and&nbsp;
                                    {%- else -%}
                                    ,&nbsp;
                                    {%- endif -%}
                                {%- endif -%}
                                {%- if authors[a].url -%}
                                    <a href="{{ authors[a].url }}">{{ authors[a].name }}</a>
                                {%- else -%}
                                    {{ authors[a].name }}
                                {%- endif -%}
                            {%- endfor -%}
                        </div>
                        <div class="text-muted">
                            {{ pub.venue }}
                        </div>
                    </div>
                {% endfor %}
                </div>
            </div>

            <div class="panel panel-default" id="resources">
                <div class="panel-heading"><h4>Software</h4></div>
                <div class="panel-body">
                    <dl class="dl-horizontal">
                    {% for item in software %}
                        <dt> <a href="{{ item.url }}">{{ item.name }}</a> </dt>
                        <dd> {{ item.desc }} </dd>
                    {% endfor %}
                    </dl>
                <p>More projects can be found on my <a href="http://github.com/bmcfee/">GitHub profile</a>.</p>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading"><h4>Data</h4></div>
                <div class="panel-body">
                    <dl class="dl-horizontal">
                    {% for item in data %}
                        <dt> <a href="{{ item.url }}">{{ item.name }}</a> </dt>
                        <dd> {{ item.desc }} </dd>
                    {% endfor %}
                    </dl>
                </div>
            </div>

            <div class="panel panel-default" id="teaching">
                <div class="panel-heading"><h4>Teaching</h4></div>
                <div class="panel-body">
                    <dl class="dl-horizontal">
                    {% for class in classes %}
                        <dt>{{ class.date }}</dt>
                        <dd><a href="{{ class.url }}">{{ class.desc }}</a></dd>
                    {% endfor %}
                    </dl>
                </div>
            </div>

            <div class="panel panel-default" id="hacks">
                <div class="panel-heading"><h4>Hack-day projects</h4></div>
                <div class="panel-body">
                    <dl class="dl-horizontal">
                    {% for item in hacks %}
                        <dt> <a href="{{ item.url }}">{{ item.name }}</a> </dt>
                        <dd> {{ item.desc }} </dd>
                    {% endfor %}
                    </dl>
                    <p>See my <a href="http://functiontelechy.tumblr.com/">hack-day blog</a> for more projects.</p>
                </div>
            </div>

        </div>
    </body>
    <script type="text/javascript" src="bootstrap/js/jquery.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>

</html>
