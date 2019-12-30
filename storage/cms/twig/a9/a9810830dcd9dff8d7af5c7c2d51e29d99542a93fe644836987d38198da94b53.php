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

";
        // line 4
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["slideshow"] ?? null), "slideshow", [], "any", false, false, false, 4), "slides", [], "any", false, false, false, 4)) {
            // line 5
            echo "<section id=\"slider\" class=\"home-slider clearfix\">
    <div class=\"slider-wrapper\">
        <div class=\"flexslider clearfix\">
            <ul class=\"slides\">
                ";
            // line 9
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["slideshow"] ?? null), "slideshow", [], "any", false, false, false, 9), "slides", [], "any", false, false, false, 9));
            foreach ($context['_seq'] as $context["i"] => $context["slide"]) {
                // line 10
                echo "                <li class=\"slide-item clearfix\" style=\"background-image: url(";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["slide"], "image", [], "any", false, false, false, 10), "path", [], "any", false, false, false, 10), "html", null, true);
                echo ");\">
                    <div class=\"flex-content\">
                        <div class=\"container\">
                            <div class=\"row\">
                                <div class=\"caption-wrap\">
                                    <div class=\"caption wow fadeInUp\" data-wow-delay=\"1s\">
                                        <h1>";
                // line 16
                if (twig_get_attribute($this->env, $this->source, $context["slide"], "name", [], "any", false, false, false, 16)) {
                    echo " ";
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["slide"], "name", [], "any", false, false, false, 16), "html", null, true);
                    echo " ";
                }
                echo "</h1>
                                    </div>
                                    <div class=\"caption wow fadeIn\" data-wow-delay=\"2s\">
                                        <p>";
                // line 19
                if (twig_get_attribute($this->env, $this->source, $context["slide"], "description", [], "any", false, false, false, 19)) {
                    echo " ";
                    echo twig_get_attribute($this->env, $this->source, $context["slide"], "description", [], "any", false, false, false, 19);
                    echo " ";
                }
                echo "</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['i'], $context['slide'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 27
            echo "                <!-- 
                <li class=\"slide-item clearfix\" style=\"background-image: url(";
            // line 28
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
                </li> -->
            </ul>
        </div>
    </div>
</section>
";
        }
        // line 52
        echo "<!-- SLIDER END -->";
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
        return array (  122 => 52,  95 => 28,  92 => 27,  74 => 19,  64 => 16,  54 => 10,  50 => 9,  44 => 5,  42 => 4,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!-- SLIDER START
            ============================================= -->

{% if slideshow.slideshow.slides %}
<section id=\"slider\" class=\"home-slider clearfix\">
    <div class=\"slider-wrapper\">
        <div class=\"flexslider clearfix\">
            <ul class=\"slides\">
                {% for i, slide in slideshow.slideshow.slides %}
                <li class=\"slide-item clearfix\" style=\"background-image: url({{ slide.image.path }});\">
                    <div class=\"flex-content\">
                        <div class=\"container\">
                            <div class=\"row\">
                                <div class=\"caption-wrap\">
                                    <div class=\"caption wow fadeInUp\" data-wow-delay=\"1s\">
                                        <h1>{% if slide.name %} {{ slide.name }} {% endif %}</h1>
                                    </div>
                                    <div class=\"caption wow fadeIn\" data-wow-delay=\"2s\">
                                        <p>{% if slide.description %} {{ slide.description|raw }} {% endif %}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                {% endfor %}
                <!-- 
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
                </li> -->
            </ul>
        </div>
    </div>
</section>
{% endif %}
<!-- SLIDER END -->", "C:\\xampp\\htdocs\\ndondo\\whauliers/themes/western/partials/slider.htm", "");
    }
}
