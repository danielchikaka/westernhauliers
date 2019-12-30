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

/* C:\xampp\htdocs\ndondo\whauliers/themes/western/layouts/default.htm */
class __TwigTemplate_c9f5f37e3e05870e1f8c6cc32ca73474db317c7f34c36719121480957d025f8d extends \Twig\Template
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
        echo "<!DOCTYPE html>
<!--[if lt IE 7 ]><html class=\"ie ie6\" lang=\"en-US\"> <![endif]-->
<!--[if IE 7 ]><html class=\"ie ie7\" lang=\"en-US\"> <![endif]-->
<!--[if gte IE 8]><html class=\"ie ie8\" lang=\"en-US\"> <![endif]-->

<html dir=\"ltr\" lang=\"en-US\">

<head>
    <title>";
        // line 9
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 9), "title", [], "any", false, false, false, 9)) {
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 9), "title", [], "any", false, false, false, 9), "html", null, true);
            echo " &#124; ";
        }
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 9), "site_title", [], "any", false, false, false, 9), "html", null, true);
        echo "</title>
    <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />
    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />
    <meta name=\"description\" content=\"";
        // line 12
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 12), "meta_description", [], "any", false, false, false, 12), "html", null, true);
        echo "\">
    <meta name=\"title\" content=\"";
        // line 13
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 13), "meta_title", [], "any", false, false, false, 13), "html", null, true);
        echo "\">
    <meta name=\"author\" content=\"https://twitter.com/dchikaka\">
    <meta name=\"generator\" content=\"OctoberCMS\">

    <!-- Google Fonts
        ============================================= -->
    <link href='https://fonts.googleapis.com/css?family=Lato:400,900,700,300' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

    <!-- Stylesheets
        ============================================= -->
    <link rel=\"stylesheet\" href=\"";
        // line 24
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/css/plugin.css");
        echo "\" type=\"text/css\" />
    <link rel=\"stylesheet\" href=\"";
        // line 25
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/css/style.css");
        echo "\" type=\"text/css\" />
    <link rel=\"stylesheet\" href=\"";
        // line 26
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/css/responsive.css");
        echo "\" type=\"text/css\" />
    <link href=\"";
        // line 27
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/logo.png");
        echo "\" rel=\"shortcut icon\" type=\"image/x-icon\" />

    <!-- JavaScripts
        ============================================= -->
    <script type=\"text/javascript\" src=\"";
        // line 31
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/js/jquery.js");
        echo "\"></script>

    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\" />

    <!--[if IE]>
        <script src=\"http://html5shiv.googlecode.com/svn/trunk/html5.js\"></script>
        <![endif]-->

    ";
        // line 39
        echo $this->env->getExtension('Cms\Twig\Extension')->assetsFunction('css');
        echo $this->env->getExtension('Cms\Twig\Extension')->displayBlock('styles');
        // line 40
        echo "</head>

<body>
    <div id=\"preloader\">
        <div id=\"status\">
            <img src=\"";
        // line 45
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/logo.png");
        echo "\" alt=\"\" />
        </div>
    </div>

    <!-- MAIN WRAPPER
        ============================================= -->
    <div id=\"main-wrapper\" class=\"clearfix\">

        <!-- Header -->
        ";
        // line 54
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("header"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 55
        echo "
        <!-- Content -->
        ";
        // line 57
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFunction();
        // line 58
        echo "
        <!-- Footer -->
        ";
        // line 60
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("footer"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 61
        echo "    </div>
    <!-- MAIN WRAPPER END -->

    <!-- Scripts -->
    <script src=\"";
        // line 65
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/js/plugin.js");
        echo "\"></script>
    <script src=\"";
        // line 66
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/js/main.js");
        echo "\"></script>
    <script src=\"";
        // line 67
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/js/formcalculations.js");
        echo "\"></script>

</body>

</html>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\ndondo\\whauliers/themes/western/layouts/default.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  159 => 67,  155 => 66,  151 => 65,  145 => 61,  141 => 60,  137 => 58,  135 => 57,  131 => 55,  127 => 54,  115 => 45,  108 => 40,  105 => 39,  94 => 31,  87 => 27,  83 => 26,  79 => 25,  75 => 24,  61 => 13,  57 => 12,  47 => 9,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!DOCTYPE html>
<!--[if lt IE 7 ]><html class=\"ie ie6\" lang=\"en-US\"> <![endif]-->
<!--[if IE 7 ]><html class=\"ie ie7\" lang=\"en-US\"> <![endif]-->
<!--[if gte IE 8]><html class=\"ie ie8\" lang=\"en-US\"> <![endif]-->

<html dir=\"ltr\" lang=\"en-US\">

<head>
    <title>{% if this.page.title %}{{ this.page.title}} &#124; {% endif %}{{ this.theme.site_title }}</title>
    <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />
    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />
    <meta name=\"description\" content=\"{{ this.page.meta_description }}\">
    <meta name=\"title\" content=\"{{ this.page.meta_title }}\">
    <meta name=\"author\" content=\"https://twitter.com/dchikaka\">
    <meta name=\"generator\" content=\"OctoberCMS\">

    <!-- Google Fonts
        ============================================= -->
    <link href='https://fonts.googleapis.com/css?family=Lato:400,900,700,300' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

    <!-- Stylesheets
        ============================================= -->
    <link rel=\"stylesheet\" href=\"{{ 'assets/css/plugin.css'|theme }}\" type=\"text/css\" />
    <link rel=\"stylesheet\" href=\"{{ 'assets/css/style.css'|theme }}\" type=\"text/css\" />
    <link rel=\"stylesheet\" href=\"{{ 'assets/css/responsive.css'|theme }}\" type=\"text/css\" />
    <link href=\"{{ 'assets/img/logo.png'|theme }}\" rel=\"shortcut icon\" type=\"image/x-icon\" />

    <!-- JavaScripts
        ============================================= -->
    <script type=\"text/javascript\" src=\"{{ 'assets/js/jquery.js'|theme }}\"></script>

    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\" />

    <!--[if IE]>
        <script src=\"http://html5shiv.googlecode.com/svn/trunk/html5.js\"></script>
        <![endif]-->

    {% styles %}
</head>

<body>
    <div id=\"preloader\">
        <div id=\"status\">
            <img src=\"{{ 'assets/img/logo.png'|theme }}\" alt=\"\" />
        </div>
    </div>

    <!-- MAIN WRAPPER
        ============================================= -->
    <div id=\"main-wrapper\" class=\"clearfix\">

        <!-- Header -->
        {% partial 'header' %}

        <!-- Content -->
        {% page %}

        <!-- Footer -->
        {% partial 'footer' %}
    </div>
    <!-- MAIN WRAPPER END -->

    <!-- Scripts -->
    <script src=\"{{'assets/js/plugin.js'|theme }}\"></script>
    <script src=\"{{'assets/js/main.js'|theme }}\"></script>
    <script src=\"{{'assets/js/formcalculations.js'|theme }}\"></script>

</body>

</html>", "C:\\xampp\\htdocs\\ndondo\\whauliers/themes/western/layouts/default.htm", "");
    }
}
