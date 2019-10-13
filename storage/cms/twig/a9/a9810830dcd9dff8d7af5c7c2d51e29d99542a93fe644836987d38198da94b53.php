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

/* C:\xampp\htdocs\ndondo\whauliers/themes/western/partials/slider.htm */
class __TwigTemplate_b1b31852771c0aa7114174006f7b8f215eed6c72b3d05caa6f79a0c12cd07aed extends \Twig\Template
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
        echo "<!-- SLIDER START
            ============================================= -->
<section id=\"slider\" class=\"home-slider clearfix\">
    <div class=\"slider-wrapper\">
        <div class=\"flexslider clearfix\">
            <ul class=\"slides\">
                <li class=\"slide-item clearfix\" style=\"background-image: url(";
        // line 7
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/slider/slide1.jpg");
        echo ");\">
                    <div class=\"flex-content\">
                        <div class=\"container\">
                            <div class=\"row\">
                                <div class=\"caption-wrap\">
                                    <div class=\"caption wow fadeInUp\" data-wow-delay=\"1s\">
                                        <h1>Passengers Transport</h1>
                                    </div>
                                    <div class=\"caption wow fadeIn\" data-wow-delay=\"2s\">
                                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                                    </div>
                                    <div class=\"caption wow fadeInUp\" data-wow-delay=\"2.5s\">
                                        <a href=\"#\" class=\"button-normal\">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                <li class=\"slide-item clearfix\" style=\"background-image: url(";
        // line 27
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/slider/slide2.jpg");
        echo ");\">
                    <div class=\"flex-content\">
                        <div class=\"container\">
                            <div class=\"row\">
                                <div class=\"caption-wrap\">
                                    <div class=\"caption wow fadeInUp\" data-wow-delay=\"3s\">
                                        <h1>We Deliver Your Goods Fast</h1>
                                    </div>
                                    <div class=\"caption wow fadeIn\" data-wow-delay=\"4s\">
                                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                                    </div>
                                    <div class=\"caption wow fadeInUp\" data-wow-delay=\"4.5s\">
                                        <a href=\"#\" class=\"button-normal\">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</section>
<!-- SLIDER END -->";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\ndondo\\whauliers/themes/western/partials/slider.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  68 => 27,  45 => 7,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!-- SLIDER START
            ============================================= -->
<section id=\"slider\" class=\"home-slider clearfix\">
    <div class=\"slider-wrapper\">
        <div class=\"flexslider clearfix\">
            <ul class=\"slides\">
                <li class=\"slide-item clearfix\" style=\"background-image: url({{ 'assets/img/slider/slide1.jpg'|theme }});\">
                    <div class=\"flex-content\">
                        <div class=\"container\">
                            <div class=\"row\">
                                <div class=\"caption-wrap\">
                                    <div class=\"caption wow fadeInUp\" data-wow-delay=\"1s\">
                                        <h1>Passengers Transport</h1>
                                    </div>
                                    <div class=\"caption wow fadeIn\" data-wow-delay=\"2s\">
                                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                                    </div>
                                    <div class=\"caption wow fadeInUp\" data-wow-delay=\"2.5s\">
                                        <a href=\"#\" class=\"button-normal\">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                <li class=\"slide-item clearfix\" style=\"background-image: url({{'assets/img/slider/slide2.jpg'|theme}});\">
                    <div class=\"flex-content\">
                        <div class=\"container\">
                            <div class=\"row\">
                                <div class=\"caption-wrap\">
                                    <div class=\"caption wow fadeInUp\" data-wow-delay=\"3s\">
                                        <h1>We Deliver Your Goods Fast</h1>
                                    </div>
                                    <div class=\"caption wow fadeIn\" data-wow-delay=\"4s\">
                                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                                    </div>
                                    <div class=\"caption wow fadeInUp\" data-wow-delay=\"4.5s\">
                                        <a href=\"#\" class=\"button-normal\">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</section>
<!-- SLIDER END -->", "C:\\xampp\\htdocs\\ndondo\\whauliers/themes/western/partials/slider.htm", "");
    }
}
