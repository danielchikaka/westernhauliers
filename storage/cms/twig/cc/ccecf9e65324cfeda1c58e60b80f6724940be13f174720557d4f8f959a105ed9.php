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

/* C:\xampp\htdocs\ndondo\whauliers/themes/kenshin-kenshinschool/pages/404.htm */
class __TwigTemplate_38dd01136da4b338ca3da6233a7ada6405b8785547114e86e6757f2065cb9f25 extends \Twig\Template
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
        echo "<!--************************************
\t\t\t\tInner Banner Start
\t\t*************************************-->
<div class=\"tg-innerbanner\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">
                <ol class=\"tg-breadcrumb\">
                    <li><a href=\"\">home</a></li>
                    <li class=\"tg-active\">404</li>
                </ol>
            </div>
        </div>
    </div>
</div>
<!--************************************
        Inner Banner End
*************************************-->
<!--************************************
        Main Start
*************************************-->
<main id=\"tg-main\" class=\"tg-main tg-haslayout\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"tg-404error\">
                <figure class=\"tg-errorimg\">
                    <img src=\"";
        // line 27
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/404-img.jpg");
        echo "\" alt=\"image description\">
                </figure>
                <div class=\"tg-errorcontent\">
                    <div class=\"col-sm-10 col-sm-offset-1\">
                        <h2>Ooops!</h2>
                        <h3>Did you hear the sound of<span>Broken Something?</span></h3>
                        <div class=\"tg-description\">
                            <p>Sorry, we can't find the page you are looking for. Please go to <a href=\"index-2.html\">Home</a></p>
                        </div>
                    </div>
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
        return "C:\\xampp\\htdocs\\ndondo\\whauliers/themes/kenshin-kenshinschool/pages/404.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  65 => 27,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!--************************************
\t\t\t\tInner Banner Start
\t\t*************************************-->
<div class=\"tg-innerbanner\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">
                <ol class=\"tg-breadcrumb\">
                    <li><a href=\"\">home</a></li>
                    <li class=\"tg-active\">404</li>
                </ol>
            </div>
        </div>
    </div>
</div>
<!--************************************
        Inner Banner End
*************************************-->
<!--************************************
        Main Start
*************************************-->
<main id=\"tg-main\" class=\"tg-main tg-haslayout\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"tg-404error\">
                <figure class=\"tg-errorimg\">
                    <img src=\"{{'assets/images/404-img.jpg'|theme}}\" alt=\"image description\">
                </figure>
                <div class=\"tg-errorcontent\">
                    <div class=\"col-sm-10 col-sm-offset-1\">
                        <h2>Ooops!</h2>
                        <h3>Did you hear the sound of<span>Broken Something?</span></h3>
                        <div class=\"tg-description\">
                            <p>Sorry, we can't find the page you are looking for. Please go to <a href=\"index-2.html\">Home</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<!--************************************
        Main End
*************************************-->", "C:\\xampp\\htdocs\\ndondo\\whauliers/themes/kenshin-kenshinschool/pages/404.htm", "");
    }
}
