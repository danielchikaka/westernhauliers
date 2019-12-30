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

/* C:\xampp\htdocs\ndondo\whauliers/themes/western/partials/nav.htm */
class __TwigTemplate_4d9ec893d56227389890477836caeee67e6209d805dd205e56b6e60e00495f1f extends \Twig\Template
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
        echo "<div class=\"navigation\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"main-menu\">
                ";
        // line 5
        $context['__cms_partial_params'] = [];
        $context['__cms_partial_params']['items'] = twig_get_attribute($this->env, $this->source, ($context["staticMenu"] ?? null), "menuItems", [], "any", false, false, false, 5)        ;
        $context['__cms_partial_params']['class'] = "menu"        ;
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("menu-items"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 6
        echo "
                <div class=\"right-section\">
                    <div class=\"search\">
                        <i class=\"fa fa-search\"></i>
                    </div>
                    <div class=\"quote-link\">
                        <a href=\"contact.html\">Request a Quote</a>
                    </div>
                    <div class=\"search-input\">
                        <input type=\"text\" name=\"s\" placeholder=\"Type some text in here...\" class=\"untouched\">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\ndondo\\whauliers/themes/western/partials/nav.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  49 => 6,  43 => 5,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div class=\"navigation\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"main-menu\">
                {% partial 'menu-items' items=staticMenu.menuItems class='menu' %}

                <div class=\"right-section\">
                    <div class=\"search\">
                        <i class=\"fa fa-search\"></i>
                    </div>
                    <div class=\"quote-link\">
                        <a href=\"contact.html\">Request a Quote</a>
                    </div>
                    <div class=\"search-input\">
                        <input type=\"text\" name=\"s\" placeholder=\"Type some text in here...\" class=\"untouched\">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>", "C:\\xampp\\htdocs\\ndondo\\whauliers/themes/western/partials/nav.htm", "");
    }
}
