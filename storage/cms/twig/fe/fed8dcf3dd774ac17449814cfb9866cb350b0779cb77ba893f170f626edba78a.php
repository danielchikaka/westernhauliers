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

/* C:\xampp\htdocs\ndondo\whauliers/themes/western/partials/header.htm */
class __TwigTemplate_3f2cecad6615e26048e6b525528b5f9d2984f4b6d4dbb770ffc9a9c8b0bcb8cb extends \Twig\Template
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
        echo "<!-- HEADER
            ============================================= -->
<header id=\"header\" class=\"header-style-2 clearfix\">
    <div class=\"site-header\">

        <div class=\"top-header clearfix\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"top-header-wrap row\">
                        <div class=\"logo col-md-4\">
                            <a href=\".\">
                                <img src=\"";
        // line 12
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/logo.png");
        echo "\" alt=\"\" /> <span
                                    class=\"secondary-color\">Western</span> <span class=\"primary-color\">Hauliers</span>
                            </a>
                        </div>

                        <div class=\"info col-md-8\">
                            <ul>

                                <li>
                                    <i class=\"fa fa-clock-o\"></i>
                                    <p>
                                        <span class=\"heading\">Opening Hours</span>
                                        <span>";
        // line 24
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 24), "opening_hours", [], "any", false, false, false, 24), "html", null, true);
        echo "</span>
                                    </p>
                                </li>


                                <li>
                                    <i class=\"fa fa-phone\"></i>
                                    <p>
                                        <span class=\"heading\">Call Us</span>
                                        <span>";
        // line 33
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 33), "office_phone", [], "any", false, false, false, 33), "html", null, true);
        echo "</span>
                                    </p>
                                </li>
                                <li class=\"last\">
                                    <i class=\"fa fa-envelope\"></i>
                                    <p>
                                        <span class=\"heading\">Email Us</span>
                                        <span>";
        // line 40
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 40), "office_email", [], "any", false, false, false, 40), "html", null, true);
        echo "</span>
                                    </p>
                                </li>
                            </ul>
                        </div>

                        <div class=\"slide-buttons\">
                            <button id=\"slide-buttons\" class=\"slide-button icon icon-navicon\"></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        ";
        // line 54
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("nav"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 55
        echo "
    </div>

    <!-- Menu Mobile
                ============================================= -->
    <nav id=\"c-menu--slide-right\" class=\"c-menu c-menu--slide-right\">
        <button class=\"c-menu__close icon icon-close\"></button>

        <div class=\"search-input\">
            <input type=\"text\" name=\"s\" placeholder=\"Type some text in here...\" class=\"untouched\">
            <button><i class=\"fa fa-search\"></i></button>
        </div>

        <ul class=\"slide-menu-items\">
            <li class=\"has-sub\"><a href=\"index.html\">Home</a>

            </li>
            <li><a href=\"about-us.html\">About Us</a></li>
            <li class=\"has-sub\"><a href=\"services.html\">Services</a>
                <ul>
                    <li><a href=\"single-services.html\">Overland Network</a></li>
                    <li><a href=\"single-services.html\">Ocean Netwok</a></li>
                    <li><a href=\"single-services.html\">Air Freight</a></li>
                    <li><a href=\"single-services.html\">Cargo</a></li>
                    <li><a href=\"single-services.html\">Storage</a></li>
                    <li><a href=\"single-services.html\">Warehousing</a></li>
                </ul>
            </li>
            <li><a href=\"blog.html\">Blog</a></li>
            <li><a href=\"contact.html\">Contact</a></li>
        </ul>

        <div class=\"info\">
            <ul>
                <li>
                    <p>
                        <span class=\"heading\">Opening Hours</span>
                        <span>Mon - Sat: 09.00 - 17.00</span>
                    </p>
                </li>
                <li>
                    <p>
                        <span class=\"heading\">Call Us</span>
                        <span>(+255) 789 789 789</span>
                    </p>
                </li>
                <li class=\"last\">
                    <p>
                        <span class=\"heading\">Email Us</span>
                        <span>info@westernhauliers.com</span>
                    </p>
                </li>
            </ul>
        </div>
    </nav>

    <div id=\"slide-overlay\" class=\"slide-overlay\"></div>
    <!-- Menu Mobile End -->
</header>
<!-- HEADER END -->";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\ndondo\\whauliers/themes/western/partials/header.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  108 => 55,  104 => 54,  87 => 40,  77 => 33,  65 => 24,  50 => 12,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!-- HEADER
            ============================================= -->
<header id=\"header\" class=\"header-style-2 clearfix\">
    <div class=\"site-header\">

        <div class=\"top-header clearfix\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"top-header-wrap row\">
                        <div class=\"logo col-md-4\">
                            <a href=\".\">
                                <img src=\"{{ 'assets/img/logo.png'|theme }}\" alt=\"\" /> <span
                                    class=\"secondary-color\">Western</span> <span class=\"primary-color\">Hauliers</span>
                            </a>
                        </div>

                        <div class=\"info col-md-8\">
                            <ul>

                                <li>
                                    <i class=\"fa fa-clock-o\"></i>
                                    <p>
                                        <span class=\"heading\">Opening Hours</span>
                                        <span>{{this.theme.opening_hours }}</span>
                                    </p>
                                </li>


                                <li>
                                    <i class=\"fa fa-phone\"></i>
                                    <p>
                                        <span class=\"heading\">Call Us</span>
                                        <span>{{this.theme.office_phone }}</span>
                                    </p>
                                </li>
                                <li class=\"last\">
                                    <i class=\"fa fa-envelope\"></i>
                                    <p>
                                        <span class=\"heading\">Email Us</span>
                                        <span>{{this.theme.office_email }}</span>
                                    </p>
                                </li>
                            </ul>
                        </div>

                        <div class=\"slide-buttons\">
                            <button id=\"slide-buttons\" class=\"slide-button icon icon-navicon\"></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        {% partial 'nav' %}

    </div>

    <!-- Menu Mobile
                ============================================= -->
    <nav id=\"c-menu--slide-right\" class=\"c-menu c-menu--slide-right\">
        <button class=\"c-menu__close icon icon-close\"></button>

        <div class=\"search-input\">
            <input type=\"text\" name=\"s\" placeholder=\"Type some text in here...\" class=\"untouched\">
            <button><i class=\"fa fa-search\"></i></button>
        </div>

        <ul class=\"slide-menu-items\">
            <li class=\"has-sub\"><a href=\"index.html\">Home</a>

            </li>
            <li><a href=\"about-us.html\">About Us</a></li>
            <li class=\"has-sub\"><a href=\"services.html\">Services</a>
                <ul>
                    <li><a href=\"single-services.html\">Overland Network</a></li>
                    <li><a href=\"single-services.html\">Ocean Netwok</a></li>
                    <li><a href=\"single-services.html\">Air Freight</a></li>
                    <li><a href=\"single-services.html\">Cargo</a></li>
                    <li><a href=\"single-services.html\">Storage</a></li>
                    <li><a href=\"single-services.html\">Warehousing</a></li>
                </ul>
            </li>
            <li><a href=\"blog.html\">Blog</a></li>
            <li><a href=\"contact.html\">Contact</a></li>
        </ul>

        <div class=\"info\">
            <ul>
                <li>
                    <p>
                        <span class=\"heading\">Opening Hours</span>
                        <span>Mon - Sat: 09.00 - 17.00</span>
                    </p>
                </li>
                <li>
                    <p>
                        <span class=\"heading\">Call Us</span>
                        <span>(+255) 789 789 789</span>
                    </p>
                </li>
                <li class=\"last\">
                    <p>
                        <span class=\"heading\">Email Us</span>
                        <span>info@westernhauliers.com</span>
                    </p>
                </li>
            </ul>
        </div>
    </nav>

    <div id=\"slide-overlay\" class=\"slide-overlay\"></div>
    <!-- Menu Mobile End -->
</header>
<!-- HEADER END -->", "C:\\xampp\\htdocs\\ndondo\\whauliers/themes/western/partials/header.htm", "");
    }
}
