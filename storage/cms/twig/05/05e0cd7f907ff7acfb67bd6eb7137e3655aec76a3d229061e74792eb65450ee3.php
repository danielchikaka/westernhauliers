<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* C:\xampp\htdocs\ndondo\whauliers/themes/kenshin-kenshinschool/pages/home.htm */
class __TwigTemplate_7bcba3508fcaee1290012f3434df108950674ab55df72ddeb7e1a11f7f4d1796 extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("slider"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 2
        echo "
<!--************************************
        Main Start
*************************************-->
<main id=\"tg-main\" class=\"tg-main tg-haslayout\">
    <div class=\"container\">
        <div class=\"row\">
            <div id=\"tg-twocolumns\" class=\"tg-twocolumns\">
                <div class=\"col-xs-12 col-sm-8 col-md-9 col-lg-9\">
                    <div id=\"tg-content\" class=\"tg-content\">
                        <section class=\"tg-sectionspace tg-haslayout\">
                            <div class=\"tg-shortcode tg-welcomeandgreeting\">
                                <figure><img src=\"";
        // line 14
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/img-03.jpg");
        echo "\" alt=\"image description\"></figure>
                                <div class=\"tg-shortcodetextbox\">
                                    <h2>Welcome &amp; Greetings!</h2>
                                    <div class=\"tg-description\">
                                        <p>Consectetur adipisicing elit sed do eiusmod tempor incididunt labore et dolore amit agna aliqua enimnate minim veniam quis nostrud exercitation ullamco laboris nisi utiata ...</p>
                                    </div>
                                    <span class=\"tg-name\">Prof. Donovan Bradburn</span>
                                    <span class=\"tg-designation\">Vice Chancellor</span>
                                    <div class=\"tg-btnpluslogo\">
                                        <a class=\"tg-btn\" href=\"\">read more</a>
                                        <strong class=\"tg-universitylogo\"><a href=\"\"><img src=\"";
        // line 24
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/logo2.png");
        echo "\" alt=\"image description\"></a></strong>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class=\"tg-sectionspace tg-haslayout\">
                            <div class=\"tg-borderheading\">
                                <h2>Latest Events</h2>
                            </div>
                            <div class=\"tg-events\">
                                <article class=\"tg-themepost tg-themepostleftimg\">
                                    <figure class=\"tg-featuredimg\">
                                        <a href=\"\">
                                            <img src=\"";
        // line 37
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/events/img-01.jpg");
        echo "\" alt=\"image description\">
                                        </a>
                                    </figure>
                                    <div class=\"tg-themepostcontent\">
                                        <ul class=\"tg-matadata\">
                                            <li>
                                                <a href=\"\">
                                                    <i class=\"fa fa-calendar\"></i>
                                                    <span>Tuesday, Apr 21, 2017</span>
                                                </a>
                                            </li>
                                        </ul>
                                        <div class=\"tg-themeposttitle\">
                                            <h3><a href=\"\">Back To School, Open Discussion</a></h3>
                                        </div>
                                        <div class=\"tg-description\">
                                            <p>Consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco ...</p>
                                        </div>
                                        <div class=\"tg-btnsbox\">
                                            <a class=\"tg-btn\" href=\"\">read more</a>
                                            <a class=\"tg-btn\" href=\"\">view all events</a>
                                        </div>
                                    </div>
                                </article>
                                <div class=\"clearfix\"></div>
                                <div class=\"row\">
                                    <div class=\"col-xs-6 col-sm-6 col-md-6 col-lg-4\">
                                        <article class=\"tg-themepost tg-themepostleftthumb\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"";
        // line 67
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/events/img-02.jpg");
        echo "\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">International Conference on Material Science 2017</a></h3>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class=\"col-xs-6 col-sm-6 col-md-6 col-lg-4\">
                                        <article class=\"tg-themepost tg-themepostleftthumb\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"";
        // line 89
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/events/img-03.jpg");
        echo "\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">Biggest Reality Virtual University Convocatio Biggest Reality Virtual</a></h3>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class=\"col-xs-6 col-sm-6 col-md-6 col-lg-4\">
                                        <article class=\"tg-themepost tg-themepostleftthumb\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"";
        // line 111
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/events/img-04.jpg");
        echo "\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">Launching Best Concept Motorbike for Abnormal</a></h3>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class=\"col-xs-6 col-sm-6 col-md-6 col-lg-4\">
                                        <article class=\"tg-themepost tg-themepostleftthumb\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"";
        // line 133
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/events/img-05.jpg");
        echo "\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">Result Announcement for Fresh Graduates 2017</a></h3>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class=\"col-xs-6 col-sm-6 col-md-6 col-lg-4\">
                                        <article class=\"tg-themepost tg-themepostleftthumb\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"";
        // line 155
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/events/img-06.jpg");
        echo "\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">Outdoor Dinner with Reputed Prof. Darwin ...</a></h3>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class=\"col-xs-6 col-sm-6 col-md-6 col-lg-4\">
                                        <article class=\"tg-themepost tg-themepostleftthumb\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"";
        // line 177
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/events/img-07.jpg");
        echo "\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">One Day Exibition at Mall of Dubai</a></h3>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class=\"tg-sectionspace tg-haslayout\">
                            <div class=\"row\">
                                <div class=\"col-xs-12 col-sm-12 col-md-7 col-lg-7\">
                                    <div class=\"tg-glanceatuoeandk\">
                                        <div class=\"tg-borderheading\">
                                            <h2>Glance at UOE&amp;K</h2>
                                        </div>
                                        <ul class=\"tg-gallery\">
                                            <li>
                                                <figure>
                                                    <a class=\"tg-btnview\" href=\"";
        // line 208
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/glance/img-00.jpg");
        echo "\" data-rel=\"prettyPhoto[glance]\"><i class=\"icon-magnifier\"></i></a>
                                                    <img src=\"";
        // line 209
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/glance/img-00.jpg");
        echo "\" alt=\"image description\">
                                                </figure>
                                            </li>
                                            <li>
                                                <figure>
                                                    <a class=\"tg-btnview\" href=\"";
        // line 214
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/glance/img-01.jpg");
        echo "\" data-rel=\"prettyPhoto[glance]\"><i class=\"icon-magnifier\"></i></a>
                                                    <img src=\"";
        // line 215
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/glance/img-01.jpg");
        echo "\" alt=\"image description\">
                                                </figure>
                                            </li>
                                            <li>
                                                <figure>
                                                    <a class=\"tg-btnview\" href=\"";
        // line 220
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/glance/img-02.jpg");
        echo "\" data-rel=\"prettyPhoto[glance]\"><i class=\"icon-magnifier\"></i></a>
                                                    <img src=\"";
        // line 221
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/glance/img-02.jpg");
        echo "\" alt=\"image description\">
                                                </figure>
                                            </li>
                                            <li>
                                                <figure>
                                                    <a class=\"tg-btnview\" href=\"";
        // line 226
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/glance/img-03.jpg");
        echo "\" data-rel=\"prettyPhoto[glance]\"><i class=\"icon-magnifier\"></i></a>
                                                    <img src=\"";
        // line 227
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/glance/img-03.jpg");
        echo "\" alt=\"image description\">
                                                </figure>
                                            </li>
                                            <li>
                                                <figure>
                                                    <a class=\"tg-btnview\" href=\"";
        // line 232
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/glance/img-04.jpg");
        echo "\" data-rel=\"prettyPhoto[glance]\"><i class=\"icon-magnifier\"></i></a>
                                                    <img src=\"";
        // line 233
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/glance/img-04.jpg");
        echo "\" alt=\"image description\">
                                                </figure>
                                            </li>
                                            <li>
                                                <figure>
                                                    <a class=\"tg-btnview\" href=\"";
        // line 238
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/glance/img-05.jpg");
        echo "\" data-rel=\"prettyPhoto[glance]\"><i class=\"icon-magnifier\"></i></a>
                                                    <img src=\"";
        // line 239
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/glance/img-05.jpg");
        echo "\" alt=\"image description\">
                                                </figure>
                                            </li>
                                            <li>
                                                <figure>
                                                    <a class=\"tg-btnview\" href=\"";
        // line 244
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/glance/img-06.jpg");
        echo "\" data-rel=\"prettyPhoto[glance]\"><i class=\"icon-magnifier\"></i></a>
                                                    <img src=\"";
        // line 245
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/glance/img-06.jpg");
        echo "\" alt=\"image description\">
                                                </figure>
                                            </li>
                                            <li>
                                                <figure>
                                                    <a class=\"tg-btnview\" href=\"";
        // line 250
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/glance/img-07.jpg");
        echo "\" data-rel=\"prettyPhoto[glance]\"><i class=\"icon-magnifier\"></i></a>
                                                    <img src=\"";
        // line 251
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/glance/img-07.jpg");
        echo "\" alt=\"image description\">
                                                </figure>
                                            </li>
                                            <li>
                                                <figure>
                                                    <a class=\"tg-btnview\" href=\"";
        // line 256
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/glance/img-08.jpg");
        echo "\" data-rel=\"prettyPhoto[glance]\"><i class=\"icon-magnifier\"></i></a>
                                                    <img src=\"";
        // line 257
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/glance/img-08.jpg");
        echo "\" alt=\"image description\">
                                                </figure>
                                            </li>
                                            <li>
                                                <figure>
                                                    <a class=\"tg-btnview\" href=\"";
        // line 262
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/glance/img-09.jpg");
        echo "\" data-rel=\"prettyPhoto[glance]\"><i class=\"icon-magnifier\"></i></a>
                                                    <img src=\"";
        // line 263
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/glance/img-09.jpg");
        echo "\" alt=\"image description\">
                                                </figure>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class=\"col-xs-12 col-sm-12 col-md-5 col-lg-5\">
                                    <div class=\"tg-widget tg-widgetquicklinks\">
                                        <div class=\"tg-borderheading\">
                                            <h2>Quick Links</h2>
                                        </div>
                                        <div class=\"tg-widgetcontent\">
                                            <ul>
                                                <li><a href=\"\">Downloads Function Form</a></li>
                                                <li><a href=\"\">Admissions Guidline For New Students</a></li>
                                                <li><a href=\"\">UOE&amp;K Online Library</a></li>
                                                <li><a href=\"\">Multimedia and Entertainment</a></li>
                                                <li><a href=\"\">Annual Holiday Trip to Dubai 2017</a></li>
                                                <li><a href=\"\">Student Advisory June 27,2017</a></li>
                                                <li><a href=\"\">Parents Meeting 2017</a></li>
                                                <li><a href=\"\">Overseas &amp; E-Learning</a></li>
                                                <li><a href=\"\">FM Radio/TV</a></li>
                                                <li><a href=\"\">FAQ's</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class=\"tg-sectionspace tg-haslayout\">
                            <div class=\"tg-latestnews\">
                                <div class=\"tg-borderheading\">
                                    <h2>Latest News</h2>
                                </div>
                                <div id=\"tg-latestnewsslider\" class=\"tg-latestnewsslider owl-carousel tg-posts\">
                                    <div class=\"item\">
                                        <article class=\"tg-themepost tg-newspost\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"";
        // line 302
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/themepost/img-05.jpg");
        echo "\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">Allotment of Hostel Accommodation 2017!</a></h3>
                                                </div>
                                                <div class=\"tg-description\">
                                                    <p>Consectetur adipisicing elit sed do eiusmod tempor inunt labore... <a href=\"\">Read More</a></p>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class=\"item\">
                                        <article class=\"tg-themepost tg-newspost\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"";
        // line 327
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/themepost/img-06.jpg");
        echo "\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">Notification of Mid Term Examinations</a></h3>
                                                </div>
                                                <div class=\"tg-description\">
                                                    <p>Consectetur adipisicing elit sed do eiusmod tempor inunt labore... <a href=\"\">Read More</a></p>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class=\"item\">
                                        <article class=\"tg-themepost tg-newspost\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"";
        // line 352
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/themepost/img-07.jpg");
        echo "\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">Invites Application for Admission in Designing Program</a></h3>
                                                </div>
                                                <div class=\"tg-description\">
                                                    <p>Consectetur adipisicing elit sed do eiusmod tempor inunt labore... <a href=\"\">Read More</a></p>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class=\"item\">
                                        <article class=\"tg-themepost tg-newspost\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"";
        // line 377
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/themepost/img-05.jpg");
        echo "\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">Allotment of Hostel Accommodation 2017!</a></h3>
                                                </div>
                                                <div class=\"tg-description\">
                                                    <p>Consectetur adipisicing elit sed do eiusmod tempor inunt labore... <a href=\"\">Read More</a></p>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class=\"item\">
                                        <article class=\"tg-themepost tg-newspost\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"";
        // line 402
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/themepost/img-06.jpg");
        echo "\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">Notification of Mid Term Examinations</a></h3>
                                                </div>
                                                <div class=\"tg-description\">
                                                    <p>Consectetur adipisicing elit sed do eiusmod tempor inunt labore... <a href=\"\">Read More</a></p>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class=\"item\">
                                        <article class=\"tg-themepost tg-newspost\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"";
        // line 427
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/themepost/img-07.jpg");
        echo "\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">Invites Application for Admission in Designing Program</a></h3>
                                                </div>
                                                <div class=\"tg-description\">
                                                    <p>Consectetur adipisicing elit sed do eiusmod tempor inunt labore... <a href=\"\">Read More</a></p>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                </div>
                                <div class=\"tg-btnsbox\">
                                    <a class=\"tg-btn\" href=\"\">view all news</a>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>



                ";
        // line 459
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("sidebar"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 460
        echo "


                <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">
                    <section class=\"tg-sectionspace tg-haslayout\">
                        <div class=\"tg-affiliationscertifications\">
                            <div class=\"tg-borderheading\">
                                <h2>Affiliations / Certifications</h2>
                            </div>
                            <div id=\"tg-affiliationscertificationsslider\" class=\"tg-affiliationscertificationsslider owl-carousel\">
                                <div class=\"item\">
                                    <figure>
                                        <a href=\"\">
                                            <img src=\"";
        // line 473
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/brands/img-01.png");
        echo "\" alt=\"image description\">
                                        </a>
                                    </figure>
                                </div>
                                <div class=\"item\">
                                    <figure>
                                        <a href=\"\">
                                            <img src=\"";
        // line 480
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/brands/img-02.png");
        echo "\" alt=\"image description\">
                                        </a>
                                    </figure>
                                </div>
                                <div class=\"item\">
                                    <figure>
                                        <a href=\"\">
                                            <img src=\"";
        // line 487
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/brands/img-03.png");
        echo "\" alt=\"image description\">
                                        </a>
                                    </figure>
                                </div>
                                <div class=\"item\">
                                    <figure>
                                        <a href=\"\">
                                            <img src=\"";
        // line 494
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/brands/img-04.png");
        echo "\" alt=\"image description\">
                                        </a>
                                    </figure>
                                </div>
                                <div class=\"item\">
                                    <figure>
                                        <a href=\"\">
                                            <img src=\"";
        // line 501
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/brands/img-05.png");
        echo "\" alt=\"image description\">
                                        </a>
                                    </figure>
                                </div>
                                <div class=\"item\">
                                    <figure>
                                        <a href=\"\">
                                            <img src=\"";
        // line 508
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/brands/img-06.png");
        echo "\" alt=\"image description\">
                                        </a>
                                    </figure>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
</main>
<!--************************************
        Main End
*************************************-->";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\ndondo\\whauliers/themes/kenshin-kenshinschool/pages/home.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  674 => 508,  664 => 501,  654 => 494,  644 => 487,  634 => 480,  624 => 473,  609 => 460,  605 => 459,  570 => 427,  542 => 402,  514 => 377,  486 => 352,  458 => 327,  430 => 302,  388 => 263,  384 => 262,  376 => 257,  372 => 256,  364 => 251,  360 => 250,  352 => 245,  348 => 244,  340 => 239,  336 => 238,  328 => 233,  324 => 232,  316 => 227,  312 => 226,  304 => 221,  300 => 220,  292 => 215,  288 => 214,  280 => 209,  276 => 208,  242 => 177,  217 => 155,  192 => 133,  167 => 111,  142 => 89,  117 => 67,  84 => 37,  68 => 24,  55 => 14,  41 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% partial 'slider' %}

<!--************************************
        Main Start
*************************************-->
<main id=\"tg-main\" class=\"tg-main tg-haslayout\">
    <div class=\"container\">
        <div class=\"row\">
            <div id=\"tg-twocolumns\" class=\"tg-twocolumns\">
                <div class=\"col-xs-12 col-sm-8 col-md-9 col-lg-9\">
                    <div id=\"tg-content\" class=\"tg-content\">
                        <section class=\"tg-sectionspace tg-haslayout\">
                            <div class=\"tg-shortcode tg-welcomeandgreeting\">
                                <figure><img src=\"{{'assets/images/img-03.jpg'|theme}}\" alt=\"image description\"></figure>
                                <div class=\"tg-shortcodetextbox\">
                                    <h2>Welcome &amp; Greetings!</h2>
                                    <div class=\"tg-description\">
                                        <p>Consectetur adipisicing elit sed do eiusmod tempor incididunt labore et dolore amit agna aliqua enimnate minim veniam quis nostrud exercitation ullamco laboris nisi utiata ...</p>
                                    </div>
                                    <span class=\"tg-name\">Prof. Donovan Bradburn</span>
                                    <span class=\"tg-designation\">Vice Chancellor</span>
                                    <div class=\"tg-btnpluslogo\">
                                        <a class=\"tg-btn\" href=\"\">read more</a>
                                        <strong class=\"tg-universitylogo\"><a href=\"\"><img src=\"{{'assets/images/logo2.png'|theme}}\" alt=\"image description\"></a></strong>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class=\"tg-sectionspace tg-haslayout\">
                            <div class=\"tg-borderheading\">
                                <h2>Latest Events</h2>
                            </div>
                            <div class=\"tg-events\">
                                <article class=\"tg-themepost tg-themepostleftimg\">
                                    <figure class=\"tg-featuredimg\">
                                        <a href=\"\">
                                            <img src=\"{{'assets/images/events/img-01.jpg'|theme}}\" alt=\"image description\">
                                        </a>
                                    </figure>
                                    <div class=\"tg-themepostcontent\">
                                        <ul class=\"tg-matadata\">
                                            <li>
                                                <a href=\"\">
                                                    <i class=\"fa fa-calendar\"></i>
                                                    <span>Tuesday, Apr 21, 2017</span>
                                                </a>
                                            </li>
                                        </ul>
                                        <div class=\"tg-themeposttitle\">
                                            <h3><a href=\"\">Back To School, Open Discussion</a></h3>
                                        </div>
                                        <div class=\"tg-description\">
                                            <p>Consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco ...</p>
                                        </div>
                                        <div class=\"tg-btnsbox\">
                                            <a class=\"tg-btn\" href=\"\">read more</a>
                                            <a class=\"tg-btn\" href=\"\">view all events</a>
                                        </div>
                                    </div>
                                </article>
                                <div class=\"clearfix\"></div>
                                <div class=\"row\">
                                    <div class=\"col-xs-6 col-sm-6 col-md-6 col-lg-4\">
                                        <article class=\"tg-themepost tg-themepostleftthumb\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"{{'assets/images/events/img-02.jpg'|theme}}\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">International Conference on Material Science 2017</a></h3>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class=\"col-xs-6 col-sm-6 col-md-6 col-lg-4\">
                                        <article class=\"tg-themepost tg-themepostleftthumb\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"{{'assets/images/events/img-03.jpg'|theme}}\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">Biggest Reality Virtual University Convocatio Biggest Reality Virtual</a></h3>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class=\"col-xs-6 col-sm-6 col-md-6 col-lg-4\">
                                        <article class=\"tg-themepost tg-themepostleftthumb\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"{{'assets/images/events/img-04.jpg'|theme}}\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">Launching Best Concept Motorbike for Abnormal</a></h3>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class=\"col-xs-6 col-sm-6 col-md-6 col-lg-4\">
                                        <article class=\"tg-themepost tg-themepostleftthumb\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"{{'assets/images/events/img-05.jpg'|theme}}\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">Result Announcement for Fresh Graduates 2017</a></h3>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class=\"col-xs-6 col-sm-6 col-md-6 col-lg-4\">
                                        <article class=\"tg-themepost tg-themepostleftthumb\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"{{'assets/images/events/img-06.jpg'|theme}}\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">Outdoor Dinner with Reputed Prof. Darwin ...</a></h3>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class=\"col-xs-6 col-sm-6 col-md-6 col-lg-4\">
                                        <article class=\"tg-themepost tg-themepostleftthumb\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"{{'assets/images/events/img-07.jpg'|theme}}\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">One Day Exibition at Mall of Dubai</a></h3>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class=\"tg-sectionspace tg-haslayout\">
                            <div class=\"row\">
                                <div class=\"col-xs-12 col-sm-12 col-md-7 col-lg-7\">
                                    <div class=\"tg-glanceatuoeandk\">
                                        <div class=\"tg-borderheading\">
                                            <h2>Glance at UOE&amp;K</h2>
                                        </div>
                                        <ul class=\"tg-gallery\">
                                            <li>
                                                <figure>
                                                    <a class=\"tg-btnview\" href=\"{{'assets/images/glance/img-00.jpg'|theme}}\" data-rel=\"prettyPhoto[glance]\"><i class=\"icon-magnifier\"></i></a>
                                                    <img src=\"{{'assets/images/glance/img-00.jpg'|theme}}\" alt=\"image description\">
                                                </figure>
                                            </li>
                                            <li>
                                                <figure>
                                                    <a class=\"tg-btnview\" href=\"{{'assets/images/glance/img-01.jpg'|theme}}\" data-rel=\"prettyPhoto[glance]\"><i class=\"icon-magnifier\"></i></a>
                                                    <img src=\"{{'assets/images/glance/img-01.jpg'|theme}}\" alt=\"image description\">
                                                </figure>
                                            </li>
                                            <li>
                                                <figure>
                                                    <a class=\"tg-btnview\" href=\"{{'assets/images/glance/img-02.jpg'|theme}}\" data-rel=\"prettyPhoto[glance]\"><i class=\"icon-magnifier\"></i></a>
                                                    <img src=\"{{'assets/images/glance/img-02.jpg'|theme}}\" alt=\"image description\">
                                                </figure>
                                            </li>
                                            <li>
                                                <figure>
                                                    <a class=\"tg-btnview\" href=\"{{'assets/images/glance/img-03.jpg'|theme}}\" data-rel=\"prettyPhoto[glance]\"><i class=\"icon-magnifier\"></i></a>
                                                    <img src=\"{{'assets/images/glance/img-03.jpg'|theme}}\" alt=\"image description\">
                                                </figure>
                                            </li>
                                            <li>
                                                <figure>
                                                    <a class=\"tg-btnview\" href=\"{{'assets/images/glance/img-04.jpg'|theme}}\" data-rel=\"prettyPhoto[glance]\"><i class=\"icon-magnifier\"></i></a>
                                                    <img src=\"{{'assets/images/glance/img-04.jpg'|theme}}\" alt=\"image description\">
                                                </figure>
                                            </li>
                                            <li>
                                                <figure>
                                                    <a class=\"tg-btnview\" href=\"{{'assets/images/glance/img-05.jpg'|theme}}\" data-rel=\"prettyPhoto[glance]\"><i class=\"icon-magnifier\"></i></a>
                                                    <img src=\"{{'assets/images/glance/img-05.jpg'|theme}}\" alt=\"image description\">
                                                </figure>
                                            </li>
                                            <li>
                                                <figure>
                                                    <a class=\"tg-btnview\" href=\"{{'assets/images/glance/img-06.jpg'|theme}}\" data-rel=\"prettyPhoto[glance]\"><i class=\"icon-magnifier\"></i></a>
                                                    <img src=\"{{'assets/images/glance/img-06.jpg'|theme}}\" alt=\"image description\">
                                                </figure>
                                            </li>
                                            <li>
                                                <figure>
                                                    <a class=\"tg-btnview\" href=\"{{'assets/images/glance/img-07.jpg'|theme}}\" data-rel=\"prettyPhoto[glance]\"><i class=\"icon-magnifier\"></i></a>
                                                    <img src=\"{{'assets/images/glance/img-07.jpg'|theme}}\" alt=\"image description\">
                                                </figure>
                                            </li>
                                            <li>
                                                <figure>
                                                    <a class=\"tg-btnview\" href=\"{{'assets/images/glance/img-08.jpg'|theme}}\" data-rel=\"prettyPhoto[glance]\"><i class=\"icon-magnifier\"></i></a>
                                                    <img src=\"{{'assets/images/glance/img-08.jpg'|theme}}\" alt=\"image description\">
                                                </figure>
                                            </li>
                                            <li>
                                                <figure>
                                                    <a class=\"tg-btnview\" href=\"{{'assets/images/glance/img-09.jpg'|theme}}\" data-rel=\"prettyPhoto[glance]\"><i class=\"icon-magnifier\"></i></a>
                                                    <img src=\"{{'assets/images/glance/img-09.jpg'|theme}}\" alt=\"image description\">
                                                </figure>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class=\"col-xs-12 col-sm-12 col-md-5 col-lg-5\">
                                    <div class=\"tg-widget tg-widgetquicklinks\">
                                        <div class=\"tg-borderheading\">
                                            <h2>Quick Links</h2>
                                        </div>
                                        <div class=\"tg-widgetcontent\">
                                            <ul>
                                                <li><a href=\"\">Downloads Function Form</a></li>
                                                <li><a href=\"\">Admissions Guidline For New Students</a></li>
                                                <li><a href=\"\">UOE&amp;K Online Library</a></li>
                                                <li><a href=\"\">Multimedia and Entertainment</a></li>
                                                <li><a href=\"\">Annual Holiday Trip to Dubai 2017</a></li>
                                                <li><a href=\"\">Student Advisory June 27,2017</a></li>
                                                <li><a href=\"\">Parents Meeting 2017</a></li>
                                                <li><a href=\"\">Overseas &amp; E-Learning</a></li>
                                                <li><a href=\"\">FM Radio/TV</a></li>
                                                <li><a href=\"\">FAQ's</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class=\"tg-sectionspace tg-haslayout\">
                            <div class=\"tg-latestnews\">
                                <div class=\"tg-borderheading\">
                                    <h2>Latest News</h2>
                                </div>
                                <div id=\"tg-latestnewsslider\" class=\"tg-latestnewsslider owl-carousel tg-posts\">
                                    <div class=\"item\">
                                        <article class=\"tg-themepost tg-newspost\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"{{'assets/images/themepost/img-05.jpg'|theme}}\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">Allotment of Hostel Accommodation 2017!</a></h3>
                                                </div>
                                                <div class=\"tg-description\">
                                                    <p>Consectetur adipisicing elit sed do eiusmod tempor inunt labore... <a href=\"\">Read More</a></p>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class=\"item\">
                                        <article class=\"tg-themepost tg-newspost\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"{{'assets/images/themepost/img-06.jpg'|theme}}\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">Notification of Mid Term Examinations</a></h3>
                                                </div>
                                                <div class=\"tg-description\">
                                                    <p>Consectetur adipisicing elit sed do eiusmod tempor inunt labore... <a href=\"\">Read More</a></p>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class=\"item\">
                                        <article class=\"tg-themepost tg-newspost\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"{{'assets/images/themepost/img-07.jpg'|theme}}\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">Invites Application for Admission in Designing Program</a></h3>
                                                </div>
                                                <div class=\"tg-description\">
                                                    <p>Consectetur adipisicing elit sed do eiusmod tempor inunt labore... <a href=\"\">Read More</a></p>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class=\"item\">
                                        <article class=\"tg-themepost tg-newspost\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"{{'assets/images/themepost/img-05.jpg'|theme}}\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">Allotment of Hostel Accommodation 2017!</a></h3>
                                                </div>
                                                <div class=\"tg-description\">
                                                    <p>Consectetur adipisicing elit sed do eiusmod tempor inunt labore... <a href=\"\">Read More</a></p>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class=\"item\">
                                        <article class=\"tg-themepost tg-newspost\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"{{'assets/images/themepost/img-06.jpg'|theme}}\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">Notification of Mid Term Examinations</a></h3>
                                                </div>
                                                <div class=\"tg-description\">
                                                    <p>Consectetur adipisicing elit sed do eiusmod tempor inunt labore... <a href=\"\">Read More</a></p>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class=\"item\">
                                        <article class=\"tg-themepost tg-newspost\">
                                            <figure class=\"tg-featuredimg\">
                                                <a href=\"\">
                                                    <img src=\"{{'assets/images/themepost/img-07.jpg'|theme}}\" alt=\"image description\">
                                                </a>
                                            </figure>
                                            <div class=\"tg-themepostcontent\">
                                                <ul class=\"tg-matadata\">
                                                    <li>
                                                        <a href=\"\">
                                                            <i class=\"fa fa-calendar\"></i>
                                                            <span>Tuesday, Apr 21, 2017</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class=\"tg-themeposttitle\">
                                                    <h3><a href=\"\">Invites Application for Admission in Designing Program</a></h3>
                                                </div>
                                                <div class=\"tg-description\">
                                                    <p>Consectetur adipisicing elit sed do eiusmod tempor inunt labore... <a href=\"\">Read More</a></p>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                </div>
                                <div class=\"tg-btnsbox\">
                                    <a class=\"tg-btn\" href=\"\">view all news</a>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>



                {% partial 'sidebar' %}



                <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">
                    <section class=\"tg-sectionspace tg-haslayout\">
                        <div class=\"tg-affiliationscertifications\">
                            <div class=\"tg-borderheading\">
                                <h2>Affiliations / Certifications</h2>
                            </div>
                            <div id=\"tg-affiliationscertificationsslider\" class=\"tg-affiliationscertificationsslider owl-carousel\">
                                <div class=\"item\">
                                    <figure>
                                        <a href=\"\">
                                            <img src=\"{{'assets/images/brands/img-01.png'|theme}}\" alt=\"image description\">
                                        </a>
                                    </figure>
                                </div>
                                <div class=\"item\">
                                    <figure>
                                        <a href=\"\">
                                            <img src=\"{{'assets/images/brands/img-02.png'|theme}}\" alt=\"image description\">
                                        </a>
                                    </figure>
                                </div>
                                <div class=\"item\">
                                    <figure>
                                        <a href=\"\">
                                            <img src=\"{{'assets/images/brands/img-03.png'|theme}}\" alt=\"image description\">
                                        </a>
                                    </figure>
                                </div>
                                <div class=\"item\">
                                    <figure>
                                        <a href=\"\">
                                            <img src=\"{{'assets/images/brands/img-04.png'|theme}}\" alt=\"image description\">
                                        </a>
                                    </figure>
                                </div>
                                <div class=\"item\">
                                    <figure>
                                        <a href=\"\">
                                            <img src=\"{{'assets/images/brands/img-05.png'|theme}}\" alt=\"image description\">
                                        </a>
                                    </figure>
                                </div>
                                <div class=\"item\">
                                    <figure>
                                        <a href=\"\">
                                            <img src=\"{{'assets/images/brands/img-06.png'|theme}}\" alt=\"image description\">
                                        </a>
                                    </figure>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
</main>
<!--************************************
        Main End
*************************************-->", "C:\\xampp\\htdocs\\ndondo\\whauliers/themes/kenshin-kenshinschool/pages/home.htm", "");
    }
}
