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

/* C:\xampp\htdocs\ndondo\whauliers/themes/western/pages/home.htm */
class __TwigTemplate_e701f659e332c02c59c54bab2a6f42f4c8aedd78ee17f073d4dee8a1d900f170 extends \Twig\Template
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
        echo "<!-- CONTENT START
            ============================================= -->
<section id=\"content\" class=\"clearfix\">

    <!-- SERVICES START
                ============================================= -->
    <div class=\"services with-bg\">
        <div class=\"container\">
            <div class=\"row\">

                <!-- Service Quote -->
                <div class=\"email-quote clearfix\">
                    <h4>Request a Quote</h4>
                    <form method=\"post\">
                        <input class=\"col-md-6\" type=\"text\" placeholder=\"Your Email\" name=\"search_query\" value=\"\">
                        <div class=\"category_filter col-md-6\">
                            <select name=\"cate\" id=\"cate\">
                                            <option value=\"\">Services</option>
                                            <option>Overland Network</option>
                                            <option>Ocean Network</option>
                                            <option>Air Freight</option>
                                            <option>Cargo</option>
                                            <option>Storage</option>
                                            <option>Warehouse</option>
                                        </select>
                            <button type=\"submit\" class=\"button-normal\"><span>send now</span></button>
                        </div>
                    </form>
                </div>
                <!-- Service Quote -->
            </div>
        </div>

        <div class=\"section-title text-center wow fadeIn\">
            <h2>Our Services</h2>
        </div>

        <div class=\"services-wrap-carousel\">
            <div class=\"item\">
                <div class=\"services-content\">
                    <div class=\"services-image\" style=\"background-image: url(";
        // line 42
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/content/services-item-1.jpg");
        echo ");\"></div>
                    <div class=\"services-text\">
                        <h3 class=\"title\">Overland Network</h3>
                        <p>As a leader in global air freight forwarding, Western Hauliers excels in providing tailored transportation</p>
                        <a href=\"#\" class=\"button-normal with-icon\">
                                        Read More
                                        <i class=\"icon icon-arrow-right\"></i>
                                    </a>
                    </div>
                    <div class=\"overlay\"></div>
                </div>
            </div>

            <div class=\"item\">
                <div class=\"services-content\">
                    <div class=\"services-image\" style=\"background-image: url(";
        // line 57
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/content/services-item-2.jpg");
        echo ");\"></div>
                    <div class=\"services-text\">
                        <h3 class=\"title\">Ocean Network</h3>
                        <p>As a leader in global air freight forwarding, Western Hauliers excels in providing tailored transportation</p>
                        <a href=\"#\" class=\"button-normal with-icon\">
                                        Read More
                                        <i class=\"icon icon-arrow-right\"></i>
                                    </a>
                    </div>
                    <div class=\"overlay\"></div>
                </div>
            </div>

            <div class=\"item\">
                <div class=\"services-content\">
                    <div class=\"services-image\" style=\"background-image: url(";
        // line 72
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/content/services-item-3.jpg");
        echo ");\"></div>
                    <div class=\"services-text\">
                        <h3 class=\"title\">Air Freight</h3>
                        <p>As a leader in global air freight forwarding, Western Hauliers excels in providing tailored transportation</p>
                        <a href=\"#\" class=\"button-normal with-icon\">
                                        Read More
                                        <i class=\"icon icon-arrow-right\"></i>
                                    </a>
                    </div>
                    <div class=\"overlay\"></div>
                </div>
            </div>

            <div class=\"item\">
                <div class=\"services-content\">
                    <div class=\"services-image\" style=\"background-image: url(";
        // line 87
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/content/services-item-4.jpg");
        echo ");\"></div>
                    <div class=\"services-text\">
                        <h3 class=\"title\">Cargo</h3>
                        <p>As a leader in global air freight forwarding, Western Hauliers excels in providing tailored transportation</p>
                        <a href=\"#\" class=\"button-normal with-icon\">
                                        Read More
                                        <i class=\"icon icon-arrow-right\"></i>
                                    </a>
                    </div>
                    <div class=\"overlay\"></div>
                </div>
            </div>

            <div class=\"item\">
                <div class=\"services-content\">
                    <div class=\"services-image\" style=\"background-image: url(";
        // line 102
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/content/services-item-5.jpg");
        echo ");\"></div>
                    <div class=\"services-text\">
                        <h3 class=\"title\">Storage</h3>
                        <p>As a leader in global air freight forwarding, Western Hauliers excels in providing tailored transportation</p>
                        <a href=\"#\" class=\"button-normal with-icon\">
                                        Read More
                                        <i class=\"icon icon-arrow-right\"></i>
                                    </a>
                    </div>
                    <div class=\"overlay\"></div>
                </div>
            </div>

            <div class=\"item\">
                <div class=\"services-content\">
                    <div class=\"services-image\" style=\"background-image: url(";
        // line 117
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/content/services-item-6.jpg");
        echo ");\"></div>
                    <div class=\"services-text\">
                        <h3 class=\"title\">Warehousing</h3>
                        <p>As a leader in global air freight forwarding, Western Hauliers excels in providing tailored transportation</p>
                        <a href=\"#\" class=\"button-normal with-icon\">
                                        Read More
                                        <i class=\"icon icon-arrow-right\"></i>
                                    </a>
                    </div>
                    <div class=\"overlay\"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- SERVICES END -->

    <!-- FEATURES START
                ============================================= -->
    <div class=\"features wrapper\">
        <div class=\"container\">
            <div class=\"row\">
                <div class=\"section-title text-center wow fadeIn\">
                    <h2>Why Choose Us</h2>
                </div>

                <div class=\"features-wrap row\">
                    <div class=\"col-md-4\">
                        <div class=\"features-item wow fadeInUp\" data-wow-delay=\"0.5s\">
                            <div class=\"icon-wrap\">
                                <i class=\"icon icon-delivery\"></i>
                            </div>
                            <div class=\"text\">
                                <h4>Ground Shipping</h4>
                                <p>Lorem ipsum dolor sit amet, consec adip tesque tinciunt rutrum sapien, sed diam.</p>
                            </div>
                        </div>
                    </div>

                    <div class=\"col-md-4\">
                        <div class=\"features-item wow fadeInUp\" data-wow-delay=\"0.8s\">
                            <div class=\"icon-wrap\">
                                <i class=\"icon icon-airplane\"></i>
                            </div>
                            <div class=\"text\">
                                <h4>Air Delivery</h4>
                                <p>Lorem ipsum dolor sit amet, consec adip tesque tinciunt rutrum sapien, sed diam.</p>
                            </div>
                        </div>
                    </div>

                    <div class=\"col-md-4\">
                        <div class=\"features-item wow fadeInUp\" data-wow-delay=\"1.2s\">
                            <div class=\"icon-wrap\">
                                <i class=\"icon icon-cargo\"></i>
                            </div>
                            <div class=\"text\">
                                <h4>Sea Delivery</h4>
                                <p>Lorem ipsum dolor sit amet, consec adip tesque tinciunt rutrum sapien, sed diam.</p>
                            </div>
                        </div>
                    </div>

                    <div class=\"col-md-4\">
                        <div class=\"features-item wow fadeInUp\" data-wow-delay=\"1.3s\">
                            <div class=\"icon-wrap\">
                                <i class=\"icon icon-container\"></i>
                            </div>
                            <div class=\"text\">
                                <h4>Forwarding Services</h4>
                                <p>Lorem ipsum dolor sit amet, consec adip tesque tinciunt rutrum sapien, sed diam.</p>
                            </div>
                        </div>
                    </div>

                    <div class=\"col-md-4\">
                        <div class=\"features-item wow fadeInUp\" data-wow-delay=\"1.6s\">
                            <div class=\"icon-wrap\">
                                <i class=\"icon icon-box-delivery\"></i>
                            </div>
                            <div class=\"text\">
                                <h4>Packaged Goods</h4>
                                <p>Lorem ipsum dolor sit amet, consec adip tesque tinciunt rutrum sapien, sed diam.</p>
                            </div>
                        </div>
                    </div>

                    <div class=\"col-md-4\">
                        <div class=\"features-item wow fadeInUp\" data-wow-delay=\"1.9s\">
                            <div class=\"icon-wrap\">
                                <i class=\"icon icon-storage\"></i>
                            </div>
                            <div class=\"text\">
                                <h4>Warehousing</h4>
                                <p>Lorem ipsum dolor sit amet, consec adip tesque tinciunt rutrum sapien, sed diam.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- FEATURES END -->



    <!-- TESTIMONIAL START
                ============================================= -->
    <div class=\"testimonial wrapper with-bg\">
        <div class=\"container\">
            <div class=\"row\">
                <div class=\"section-title text-center wow fadeIn\">
                    <h2>Testimonials</h2>
                </div>

                <div class=\"owl-carousel wow fadeIn\" data-wow-delay=\"0.5s\">
                    <div class=\"testimonial-item\">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>

                        <div class=\"client-info\">
                            <img src=\"";
        // line 236
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/content/client-photo-1.png");
        echo "\" alt=\"\" />
                            <div class=\"client-details\">
                                <h3>John Doe</h3>
                                <p>CEO of Candy's Heaven</p>
                            </div>
                        </div>
                    </div>

                    <div class=\"testimonial-item\">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>

                        <div class=\"client-info\">
                            <img src=\"";
        // line 248
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/content/client-photo-2.png");
        echo "\" alt=\"\" />
                            <div class=\"client-details\">
                                <h3>Carol Linda</h3>
                                <p>Branch Manager of KLM</p>
                            </div>
                        </div>
                    </div>

                    <div class=\"testimonial-item\">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>

                        <div class=\"client-info\">
                            <img src=\"";
        // line 260
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/content/client-photo-1.png");
        echo "\" alt=\"\" />
                            <div class=\"client-details\">
                                <h3>Steven Smith</h3>
                                <p>CTO of Minyak Telon</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class=\"our-partner\">
                    <div class=\"partner-logo col-md-15 wow fadeIn\" data-wow-delay=\"0.3s\">
                        <img src=\"";
        // line 271
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/content/partner-01.png");
        echo "\" alt=\"\" />
                    </div>
                    <div class=\"partner-logo col-md-15 wow fadeIn\" data-wow-delay=\"0.6s\">
                        <img src=\"";
        // line 274
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/content/partner-02.png");
        echo "\" alt=\"\" />
                    </div>
                    <div class=\"partner-logo col-md-15 wow fadeIn\" data-wow-delay=\"0.9s\">
                        <img src=\"";
        // line 277
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/content/partner-03.png");
        echo "\" alt=\"\" />
                    </div>
                    <div class=\"partner-logo col-md-15 wow fadeIn\" data-wow-delay=\"1.2s\">
                        <img src=\"";
        // line 280
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/content/partner-04.png");
        echo "\" alt=\"\" />
                    </div>
                    <div class=\"partner-logo col-md-15 wow fadeIn\" data-wow-delay=\"1.5s\">
                        <img src=\"";
        // line 283
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/content/partner-05.png");
        echo "\" alt=\"\" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- TESTIMONIAL END -->

    <!-- LATEST NEWS START
                ============================================= -->
    <div class=\"latest-post wrapper bg-color\">
        <div class=\"container\">
            <div class=\"row\">
                <div class=\"section-title text-center wow fadeIn\">
                    <h2>Latest News</h2>
                </div>

                <div class=\"post-wrap wow fadeIn\" data-wow-delay=\"0.5s\">
                    <div class=\"post-item\">
                        <div class=\"post-thumb\">
                            <a href=\"single-post.html\">
                                <img src=\"";
        // line 304
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/content/latest-post-thumb-1.jpg");
        echo "\" alt=\"\" />
                                <div class=\"overlay\"></div>
                            </a>
                        </div>

                        <div class=\"post-content\">
                            <div class=\"date\">
                                <span>20</span>
                                <span>May</span>
                            </div>
                            <div class=\"content-wrap\">
                                <h4>Transformtive Donation For Main Philanthropy</h4>

                                <p class=\"excerpt\">Etiamt vehicula elit.Vivauedaus rutrum mi ut aliquam In hac habitasse platore dictum will Integer sagittis neque in porta semes.</p>
                                <a href=\"single-post.html\" class=\"button-normal with-icon\">
                                                Read More
                                                <i class=\"icon icon-arrow-right\"></i>
                                            </a>
                            </div>
                        </div>
                    </div>

                    <div class=\"post-item\">
                        <div class=\"post-thumb\">
                            <a href=\"single-post.html\">
                                <img src=\"";
        // line 329
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/content/latest-post-thumb-2.jpg");
        echo "\" alt=\"\" />
                                <div class=\"overlay\"></div>
                            </a>
                        </div>

                        <div class=\"post-content\">
                            <div class=\"date\">
                                <span>26</span>
                                <span>May</span>
                            </div>
                            <div class=\"content-wrap\">
                                <h4>Corporate Meeting Turns Into a Photo Shooting</h4>

                                <p class=\"excerpt\">Etiamt vehicula elit.Vivauedaus rutrum mi ut aliquam In hac habitasse platore dictum will Integer sagittis neque in porta semes.</p>
                                <a href=\"single-post.html\" class=\"button-normal with-icon\">
                                                Read More
                                                <i class=\"icon icon-arrow-right\"></i>
                                            </a>
                            </div>
                        </div>
                    </div>

                    <div class=\"post-item\">
                        <div class=\"post-thumb\">
                            <a href=\"single-post.html\">
                                <img src=\"";
        // line 354
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/content/latest-post-thumb-3.jpg");
        echo "\" alt=\"\" />
                                <div class=\"overlay\"></div>
                            </a>
                        </div>

                        <div class=\"post-content\">
                            <div class=\"date\">
                                <span>30</span>
                                <span>May</span>
                            </div>
                            <div class=\"content-wrap\">
                                <h4>Statistics and Analysis The Key To Success</h4>

                                <p class=\"excerpt\">Etiamt vehicula elit.Vivauedaus rutrum mi ut aliquam In hac habitasse platore dictum will Integer sagittis neque in porta semes.</p>
                                <a href=\"single-post.html\" class=\"button-normal with-icon\">
                                                Read More
                                                <i class=\"icon icon-arrow-right\"></i>
                                            </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- LATEST NEWS END -->

    <!-- COUNTER NUMBER START
                ============================================= -->
    <div class=\"counter-section wrapper\">
        <div class=\"container\">
            <div class=\"row\">

                <div class=\"counter-wrap row\">
                    <div class=\"counter-item col-md-15 wow fadeInUp\" data-wow-delay=\"0.2s\">
                        <h2 class=\"counter\">1,273</h2>
                        <div class=\"counter-details\">
                            <p class=\"heading\">Delivered Packages</p>
                            <p>The core values are the guiding principles that dictate behavior and action.</p>
                        </div>
                    </div>

                    <div class=\"counter-item col-md-15 wow fadeInUp\" data-wow-delay=\"0.4s\">
                        <h2 class=\"counter\">473,754</h2>
                        <div class=\"counter-details\">
                            <p class=\"heading\">KM Per Year</p>
                            <p>The core values are the guiding principles that dictate behavior and action.</p>
                        </div>
                    </div>

                    <div class=\"counter-item col-md-15 wow fadeInUp\" data-wow-delay=\"0.6s\">
                        <h2 class=\"counter\">25</h2>
                        <div class=\"counter-details\">
                            <p class=\"heading\">Years of Experience</p>
                            <p>The core values are the guiding principles that dictate behavior and action.</p>
                        </div>
                    </div>

                    <div class=\"counter-item col-md-15 wow fadeInUp\" data-wow-delay=\"0.8s\">
                        <h2 class=\"counter\">719</h2>
                        <div class=\"counter-details\">
                            <p class=\"heading\">Happy Clients</p>
                            <p>The core values are the guiding principles that dictate behavior and action.</p>
                        </div>
                    </div>

                    <div class=\"counter-item col-md-15 wow fadeInUp\" data-wow-delay=\"1s\">
                        <h2 class=\"counter\">4,234</h2>
                        <div class=\"counter-details\">
                            <p class=\"heading\">Tons of Goods</p>
                            <p>The core values are the guiding principles that dictate behavior and action.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- COUNTER NUMBER END -->

</section>
<!-- CONTENT END -->";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\ndondo\\whauliers/themes/western/pages/home.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  443 => 354,  415 => 329,  387 => 304,  363 => 283,  357 => 280,  351 => 277,  345 => 274,  339 => 271,  325 => 260,  310 => 248,  295 => 236,  173 => 117,  155 => 102,  137 => 87,  119 => 72,  101 => 57,  83 => 42,  41 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% partial 'slider' %}
<!-- CONTENT START
            ============================================= -->
<section id=\"content\" class=\"clearfix\">

    <!-- SERVICES START
                ============================================= -->
    <div class=\"services with-bg\">
        <div class=\"container\">
            <div class=\"row\">

                <!-- Service Quote -->
                <div class=\"email-quote clearfix\">
                    <h4>Request a Quote</h4>
                    <form method=\"post\">
                        <input class=\"col-md-6\" type=\"text\" placeholder=\"Your Email\" name=\"search_query\" value=\"\">
                        <div class=\"category_filter col-md-6\">
                            <select name=\"cate\" id=\"cate\">
                                            <option value=\"\">Services</option>
                                            <option>Overland Network</option>
                                            <option>Ocean Network</option>
                                            <option>Air Freight</option>
                                            <option>Cargo</option>
                                            <option>Storage</option>
                                            <option>Warehouse</option>
                                        </select>
                            <button type=\"submit\" class=\"button-normal\"><span>send now</span></button>
                        </div>
                    </form>
                </div>
                <!-- Service Quote -->
            </div>
        </div>

        <div class=\"section-title text-center wow fadeIn\">
            <h2>Our Services</h2>
        </div>

        <div class=\"services-wrap-carousel\">
            <div class=\"item\">
                <div class=\"services-content\">
                    <div class=\"services-image\" style=\"background-image: url({{'assets/img/content/services-item-1.jpg'|theme}});\"></div>
                    <div class=\"services-text\">
                        <h3 class=\"title\">Overland Network</h3>
                        <p>As a leader in global air freight forwarding, Western Hauliers excels in providing tailored transportation</p>
                        <a href=\"#\" class=\"button-normal with-icon\">
                                        Read More
                                        <i class=\"icon icon-arrow-right\"></i>
                                    </a>
                    </div>
                    <div class=\"overlay\"></div>
                </div>
            </div>

            <div class=\"item\">
                <div class=\"services-content\">
                    <div class=\"services-image\" style=\"background-image: url({{'assets/img/content/services-item-2.jpg'|theme}});\"></div>
                    <div class=\"services-text\">
                        <h3 class=\"title\">Ocean Network</h3>
                        <p>As a leader in global air freight forwarding, Western Hauliers excels in providing tailored transportation</p>
                        <a href=\"#\" class=\"button-normal with-icon\">
                                        Read More
                                        <i class=\"icon icon-arrow-right\"></i>
                                    </a>
                    </div>
                    <div class=\"overlay\"></div>
                </div>
            </div>

            <div class=\"item\">
                <div class=\"services-content\">
                    <div class=\"services-image\" style=\"background-image: url({{'assets/img/content/services-item-3.jpg'|theme}});\"></div>
                    <div class=\"services-text\">
                        <h3 class=\"title\">Air Freight</h3>
                        <p>As a leader in global air freight forwarding, Western Hauliers excels in providing tailored transportation</p>
                        <a href=\"#\" class=\"button-normal with-icon\">
                                        Read More
                                        <i class=\"icon icon-arrow-right\"></i>
                                    </a>
                    </div>
                    <div class=\"overlay\"></div>
                </div>
            </div>

            <div class=\"item\">
                <div class=\"services-content\">
                    <div class=\"services-image\" style=\"background-image: url({{'assets/img/content/services-item-4.jpg'|theme}});\"></div>
                    <div class=\"services-text\">
                        <h3 class=\"title\">Cargo</h3>
                        <p>As a leader in global air freight forwarding, Western Hauliers excels in providing tailored transportation</p>
                        <a href=\"#\" class=\"button-normal with-icon\">
                                        Read More
                                        <i class=\"icon icon-arrow-right\"></i>
                                    </a>
                    </div>
                    <div class=\"overlay\"></div>
                </div>
            </div>

            <div class=\"item\">
                <div class=\"services-content\">
                    <div class=\"services-image\" style=\"background-image: url({{'assets/img/content/services-item-5.jpg'|theme}});\"></div>
                    <div class=\"services-text\">
                        <h3 class=\"title\">Storage</h3>
                        <p>As a leader in global air freight forwarding, Western Hauliers excels in providing tailored transportation</p>
                        <a href=\"#\" class=\"button-normal with-icon\">
                                        Read More
                                        <i class=\"icon icon-arrow-right\"></i>
                                    </a>
                    </div>
                    <div class=\"overlay\"></div>
                </div>
            </div>

            <div class=\"item\">
                <div class=\"services-content\">
                    <div class=\"services-image\" style=\"background-image: url({{'assets/img/content/services-item-6.jpg'|theme}});\"></div>
                    <div class=\"services-text\">
                        <h3 class=\"title\">Warehousing</h3>
                        <p>As a leader in global air freight forwarding, Western Hauliers excels in providing tailored transportation</p>
                        <a href=\"#\" class=\"button-normal with-icon\">
                                        Read More
                                        <i class=\"icon icon-arrow-right\"></i>
                                    </a>
                    </div>
                    <div class=\"overlay\"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- SERVICES END -->

    <!-- FEATURES START
                ============================================= -->
    <div class=\"features wrapper\">
        <div class=\"container\">
            <div class=\"row\">
                <div class=\"section-title text-center wow fadeIn\">
                    <h2>Why Choose Us</h2>
                </div>

                <div class=\"features-wrap row\">
                    <div class=\"col-md-4\">
                        <div class=\"features-item wow fadeInUp\" data-wow-delay=\"0.5s\">
                            <div class=\"icon-wrap\">
                                <i class=\"icon icon-delivery\"></i>
                            </div>
                            <div class=\"text\">
                                <h4>Ground Shipping</h4>
                                <p>Lorem ipsum dolor sit amet, consec adip tesque tinciunt rutrum sapien, sed diam.</p>
                            </div>
                        </div>
                    </div>

                    <div class=\"col-md-4\">
                        <div class=\"features-item wow fadeInUp\" data-wow-delay=\"0.8s\">
                            <div class=\"icon-wrap\">
                                <i class=\"icon icon-airplane\"></i>
                            </div>
                            <div class=\"text\">
                                <h4>Air Delivery</h4>
                                <p>Lorem ipsum dolor sit amet, consec adip tesque tinciunt rutrum sapien, sed diam.</p>
                            </div>
                        </div>
                    </div>

                    <div class=\"col-md-4\">
                        <div class=\"features-item wow fadeInUp\" data-wow-delay=\"1.2s\">
                            <div class=\"icon-wrap\">
                                <i class=\"icon icon-cargo\"></i>
                            </div>
                            <div class=\"text\">
                                <h4>Sea Delivery</h4>
                                <p>Lorem ipsum dolor sit amet, consec adip tesque tinciunt rutrum sapien, sed diam.</p>
                            </div>
                        </div>
                    </div>

                    <div class=\"col-md-4\">
                        <div class=\"features-item wow fadeInUp\" data-wow-delay=\"1.3s\">
                            <div class=\"icon-wrap\">
                                <i class=\"icon icon-container\"></i>
                            </div>
                            <div class=\"text\">
                                <h4>Forwarding Services</h4>
                                <p>Lorem ipsum dolor sit amet, consec adip tesque tinciunt rutrum sapien, sed diam.</p>
                            </div>
                        </div>
                    </div>

                    <div class=\"col-md-4\">
                        <div class=\"features-item wow fadeInUp\" data-wow-delay=\"1.6s\">
                            <div class=\"icon-wrap\">
                                <i class=\"icon icon-box-delivery\"></i>
                            </div>
                            <div class=\"text\">
                                <h4>Packaged Goods</h4>
                                <p>Lorem ipsum dolor sit amet, consec adip tesque tinciunt rutrum sapien, sed diam.</p>
                            </div>
                        </div>
                    </div>

                    <div class=\"col-md-4\">
                        <div class=\"features-item wow fadeInUp\" data-wow-delay=\"1.9s\">
                            <div class=\"icon-wrap\">
                                <i class=\"icon icon-storage\"></i>
                            </div>
                            <div class=\"text\">
                                <h4>Warehousing</h4>
                                <p>Lorem ipsum dolor sit amet, consec adip tesque tinciunt rutrum sapien, sed diam.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- FEATURES END -->



    <!-- TESTIMONIAL START
                ============================================= -->
    <div class=\"testimonial wrapper with-bg\">
        <div class=\"container\">
            <div class=\"row\">
                <div class=\"section-title text-center wow fadeIn\">
                    <h2>Testimonials</h2>
                </div>

                <div class=\"owl-carousel wow fadeIn\" data-wow-delay=\"0.5s\">
                    <div class=\"testimonial-item\">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>

                        <div class=\"client-info\">
                            <img src=\"{{'assets/img/content/client-photo-1.png'|theme}}\" alt=\"\" />
                            <div class=\"client-details\">
                                <h3>John Doe</h3>
                                <p>CEO of Candy's Heaven</p>
                            </div>
                        </div>
                    </div>

                    <div class=\"testimonial-item\">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>

                        <div class=\"client-info\">
                            <img src=\"{{'assets/img/content/client-photo-2.png'|theme}}\" alt=\"\" />
                            <div class=\"client-details\">
                                <h3>Carol Linda</h3>
                                <p>Branch Manager of KLM</p>
                            </div>
                        </div>
                    </div>

                    <div class=\"testimonial-item\">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>

                        <div class=\"client-info\">
                            <img src=\"{{'assets/img/content/client-photo-1.png'|theme}}\" alt=\"\" />
                            <div class=\"client-details\">
                                <h3>Steven Smith</h3>
                                <p>CTO of Minyak Telon</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class=\"our-partner\">
                    <div class=\"partner-logo col-md-15 wow fadeIn\" data-wow-delay=\"0.3s\">
                        <img src=\"{{'assets/img/content/partner-01.png'|theme}}\" alt=\"\" />
                    </div>
                    <div class=\"partner-logo col-md-15 wow fadeIn\" data-wow-delay=\"0.6s\">
                        <img src=\"{{'assets/img/content/partner-02.png'|theme}}\" alt=\"\" />
                    </div>
                    <div class=\"partner-logo col-md-15 wow fadeIn\" data-wow-delay=\"0.9s\">
                        <img src=\"{{'assets/img/content/partner-03.png'|theme}}\" alt=\"\" />
                    </div>
                    <div class=\"partner-logo col-md-15 wow fadeIn\" data-wow-delay=\"1.2s\">
                        <img src=\"{{'assets/img/content/partner-04.png'|theme}}\" alt=\"\" />
                    </div>
                    <div class=\"partner-logo col-md-15 wow fadeIn\" data-wow-delay=\"1.5s\">
                        <img src=\"{{'assets/img/content/partner-05.png'|theme}}\" alt=\"\" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- TESTIMONIAL END -->

    <!-- LATEST NEWS START
                ============================================= -->
    <div class=\"latest-post wrapper bg-color\">
        <div class=\"container\">
            <div class=\"row\">
                <div class=\"section-title text-center wow fadeIn\">
                    <h2>Latest News</h2>
                </div>

                <div class=\"post-wrap wow fadeIn\" data-wow-delay=\"0.5s\">
                    <div class=\"post-item\">
                        <div class=\"post-thumb\">
                            <a href=\"single-post.html\">
                                <img src=\"{{'assets/img/content/latest-post-thumb-1.jpg'|theme}}\" alt=\"\" />
                                <div class=\"overlay\"></div>
                            </a>
                        </div>

                        <div class=\"post-content\">
                            <div class=\"date\">
                                <span>20</span>
                                <span>May</span>
                            </div>
                            <div class=\"content-wrap\">
                                <h4>Transformtive Donation For Main Philanthropy</h4>

                                <p class=\"excerpt\">Etiamt vehicula elit.Vivauedaus rutrum mi ut aliquam In hac habitasse platore dictum will Integer sagittis neque in porta semes.</p>
                                <a href=\"single-post.html\" class=\"button-normal with-icon\">
                                                Read More
                                                <i class=\"icon icon-arrow-right\"></i>
                                            </a>
                            </div>
                        </div>
                    </div>

                    <div class=\"post-item\">
                        <div class=\"post-thumb\">
                            <a href=\"single-post.html\">
                                <img src=\"{{'assets/img/content/latest-post-thumb-2.jpg'|theme}}\" alt=\"\" />
                                <div class=\"overlay\"></div>
                            </a>
                        </div>

                        <div class=\"post-content\">
                            <div class=\"date\">
                                <span>26</span>
                                <span>May</span>
                            </div>
                            <div class=\"content-wrap\">
                                <h4>Corporate Meeting Turns Into a Photo Shooting</h4>

                                <p class=\"excerpt\">Etiamt vehicula elit.Vivauedaus rutrum mi ut aliquam In hac habitasse platore dictum will Integer sagittis neque in porta semes.</p>
                                <a href=\"single-post.html\" class=\"button-normal with-icon\">
                                                Read More
                                                <i class=\"icon icon-arrow-right\"></i>
                                            </a>
                            </div>
                        </div>
                    </div>

                    <div class=\"post-item\">
                        <div class=\"post-thumb\">
                            <a href=\"single-post.html\">
                                <img src=\"{{'assets/img/content/latest-post-thumb-3.jpg'|theme}}\" alt=\"\" />
                                <div class=\"overlay\"></div>
                            </a>
                        </div>

                        <div class=\"post-content\">
                            <div class=\"date\">
                                <span>30</span>
                                <span>May</span>
                            </div>
                            <div class=\"content-wrap\">
                                <h4>Statistics and Analysis The Key To Success</h4>

                                <p class=\"excerpt\">Etiamt vehicula elit.Vivauedaus rutrum mi ut aliquam In hac habitasse platore dictum will Integer sagittis neque in porta semes.</p>
                                <a href=\"single-post.html\" class=\"button-normal with-icon\">
                                                Read More
                                                <i class=\"icon icon-arrow-right\"></i>
                                            </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- LATEST NEWS END -->

    <!-- COUNTER NUMBER START
                ============================================= -->
    <div class=\"counter-section wrapper\">
        <div class=\"container\">
            <div class=\"row\">

                <div class=\"counter-wrap row\">
                    <div class=\"counter-item col-md-15 wow fadeInUp\" data-wow-delay=\"0.2s\">
                        <h2 class=\"counter\">1,273</h2>
                        <div class=\"counter-details\">
                            <p class=\"heading\">Delivered Packages</p>
                            <p>The core values are the guiding principles that dictate behavior and action.</p>
                        </div>
                    </div>

                    <div class=\"counter-item col-md-15 wow fadeInUp\" data-wow-delay=\"0.4s\">
                        <h2 class=\"counter\">473,754</h2>
                        <div class=\"counter-details\">
                            <p class=\"heading\">KM Per Year</p>
                            <p>The core values are the guiding principles that dictate behavior and action.</p>
                        </div>
                    </div>

                    <div class=\"counter-item col-md-15 wow fadeInUp\" data-wow-delay=\"0.6s\">
                        <h2 class=\"counter\">25</h2>
                        <div class=\"counter-details\">
                            <p class=\"heading\">Years of Experience</p>
                            <p>The core values are the guiding principles that dictate behavior and action.</p>
                        </div>
                    </div>

                    <div class=\"counter-item col-md-15 wow fadeInUp\" data-wow-delay=\"0.8s\">
                        <h2 class=\"counter\">719</h2>
                        <div class=\"counter-details\">
                            <p class=\"heading\">Happy Clients</p>
                            <p>The core values are the guiding principles that dictate behavior and action.</p>
                        </div>
                    </div>

                    <div class=\"counter-item col-md-15 wow fadeInUp\" data-wow-delay=\"1s\">
                        <h2 class=\"counter\">4,234</h2>
                        <div class=\"counter-details\">
                            <p class=\"heading\">Tons of Goods</p>
                            <p>The core values are the guiding principles that dictate behavior and action.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- COUNTER NUMBER END -->

</section>
<!-- CONTENT END -->", "C:\\xampp\\htdocs\\ndondo\\whauliers/themes/western/pages/home.htm", "");
    }
}
