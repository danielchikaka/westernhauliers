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

/* C:\xampp\htdocs\ndondo\whauliers/themes/western/partials/menu-items.htm */
class __TwigTemplate_c57b4c2e8de41672d40099c550d4b5fa89854ce85683a042f7804a9c2f09ebd8 extends \Twig\Template
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
        echo "<ul class=\"menu\">

    ";
        // line 3
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["items"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 4
            echo "    <li class=\"";
            echo (((twig_get_attribute($this->env, $this->source, $context["item"], "isActive", [], "any", false, false, false, 4) || twig_get_attribute($this->env, $this->source, $context["item"], "isChildActive", [], "any", false, false, false, 4))) ? ("active") : (""));
            echo " 
                        ";
            // line 5
            echo ((twig_get_attribute($this->env, $this->source, $context["item"], "items", [], "any", false, false, false, 5)) ? ("has-sub") : (""));
            echo "\">
        <a href=\"";
            // line 6
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["item"], "url", [], "any", false, false, false, 6), "html", null, true);
            echo "\">
            ";
            // line 7
            echo call_user_func_array($this->env->getFilter('_')->getCallable(), [twig_get_attribute($this->env, $this->source, $context["item"], "title", [], "any", false, false, false, 7)]);
            echo "
        </a>
        ";
            // line 9
            if (twig_get_attribute($this->env, $this->source, $context["item"], "items", [], "any", false, false, false, 9)) {
                // line 10
                echo "        ";
                $context['__cms_partial_params'] = [];
                $context['__cms_partial_params']['items'] = twig_get_attribute($this->env, $this->source, $context["item"], "items", [], "any", false, false, false, 10)                ;
                $context['__cms_partial_params']['class'] = "dummy-class"                ;
                echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("menu-items"                , $context['__cms_partial_params']                , true                );
                unset($context['__cms_partial_params']);
                // line 11
                echo "        ";
            }
            // line 12
            echo "    </li>
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 14
        echo "</ul>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\ndondo\\whauliers/themes/western/partials/menu-items.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  82 => 14,  75 => 12,  72 => 11,  65 => 10,  63 => 9,  58 => 7,  54 => 6,  50 => 5,  45 => 4,  41 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<ul class=\"menu\">

    {% for item in items %}
    <li class=\"{{ item.isActive or item.isChildActive ? 'active' : '' }} 
                        {{ item.items ? 'has-sub' : '' }}\">
        <a href=\"{{ item.url }}\">
            {{ item.title|_ }}
        </a>
        {% if item.items %}
        {% partial 'menu-items' items=item.items class='dummy-class' %}
        {% endif %}
    </li>
    {% endfor %}
</ul>", "C:\\xampp\\htdocs\\ndondo\\whauliers/themes/western/partials/menu-items.htm", "");
    }
}
