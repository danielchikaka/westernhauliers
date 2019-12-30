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

/* C:\xampp\htdocs\ndondo\whauliers/themes/western/partials/footer.htm */
class __TwigTemplate_20fe51bedbbfe66d12b2fe55efa00e5e1f678ff340f729f54ce6a8bb5e6efba3 extends \Twig\Template
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
        echo "<!-- FOOTER START
            ============================================= -->
<footer id=\"footer\" class=\"wrapper clearfix\">

    <div class=\"container\">
        <div class=\"row\">
            <div class=\"footer-wrap row\">
                <!-- WIDGET FOOTER 1 START
                            ============================================= -->
                <div class=\"widget-footer col-md-4\">
                    <div class=\"short-desc\">
                        <div class=\"logo-footer\">
                            <img src=\"";
        // line 13
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/logo.png");
        echo "\" alt=\"\" /> Western Hauliers
                        </div>
                        <p>Phasellus et nisl tellus. Etiam facilisis eu nisi scelerisque faucibus. Proin semper suscipit
                            magna, nec imperdiet lacus semper vitae. Sed hendrerit enim non justo posuere placerat eget
                            purus mauris.</p>
                        <p>Etiam facilisis eu nisi scelerisque fabus. Proin semper suscipit magna, nec pediet lacus
                            semper.</p>
                    </div>
                </div>
                <!-- WIDGET FOOTER 1 END -->

                <!-- WIDGET FOOTER 2 START
                            ============================================= -->
                <div class=\"widget-footer col-md-4\">
                    <div class=\"recent-post\">
                        <h4 class=\"title\">Recent Post</h4>
                        <div class=\"footer-content\">
                            <div class=\"post-item\">
                                <a href=\"single-post.html\">
                                    <div class=\"post-thumb\">
                                        <img src=\"";
        // line 33
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/content/recent-post-thumb-1.jpg");
        echo "\" alt=\"\" />
                                        <div class=\"overlay\"></div>
                                    </div>
                                </a>
                                <div class=\"post-content\">
                                    <a href=\"single-post.html\">
                                        <h4>Your Blog Title Here</h4>
                                    </a>
                                    <p>Phasellus et nisl tellus. Etiam facilisis eu nisi scelerisque faucibus...</p>
                                    <div class=\"meta\">
                                        <span class=\"date\">02 August, 2015</span>
                                    </div>
                                </div>
                            </div>

                            <div class=\"post-item\">
                                <a href=\"single-post.html\">
                                    <div class=\"post-thumb\">
                                        <img src=\"";
        // line 51
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/content/recent-post-thumb-2.jpg");
        echo "\" alt=\"\" />
                                        <div class=\"overlay\"></div>
                                    </div>
                                </a>
                                <div class=\"post-content\">
                                    <a href=\"single-post.html\">
                                        <h4>Your Blog Title Here</h4>
                                    </a>
                                    <p>Phasellus et nisl tellus. Etiam facilisis eu nisi scelerisque faucibus...</p>
                                    <div class=\"meta\">
                                        <span class=\"date\">02 August, 2015</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- WIDGET FOOTER 2 END -->

                <!-- WIDGET FOOTER 3 START
                            ============================================= -->
                <div class=\"widget-footer col-md-4\">
                    <div class=\"contact-footer\">
                        <h4 class=\"title\">Contact Us</h4>
                        <div class=\"footer-content\">
                            <div class=\"contact-section\">
                                <h4>Our Office Address</h4>
                                <p>Western House</p>
                                <p>356, Bibi Titi Mohamed Street</p>
                                <p>Dar es Salaam, Tanzania</p>
                                <p>Telephone : + 255 23 289 890 788</p>
                                <p>Email : info@westernhauliers.com</p>
                            </div>
                            <div class=\"contact-section\">
                                <h4>Our Storage Address</h4>
                                <p>Boulevard des Capucines</p>
                                <p>356, Bibi Titi Mohamed Street</p>
                                <p>Dar es Salaam, Tanzania</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- WIDGET FOOTER 3 END -->
            </div>
        </div>
    </div>

    <!-- COPYRIGHT START
                ============================================= -->
    <div class=\"copyright text-center\">
        <div class=\"container\">
            <div class=\"social-icon\">
                <ul>
                    ";
        // line 104
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 104), "facebook", [], "any", false, false, false, 104)) {
            // line 105
            echo "                    <li><a href=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 105), "facebook", [], "any", false, false, false, 105), "html", null, true);
            echo "\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a></li>
                    ";
        }
        // line 107
        echo "                    ";
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 107), "twitter", [], "any", false, false, false, 107)) {
            // line 108
            echo "                    <li><a href=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 108), "twitter", [], "any", false, false, false, 108), "html", null, true);
            echo "\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a></li>
                    ";
        }
        // line 110
        echo "                    ";
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 110), "linkedin", [], "any", false, false, false, 110)) {
            // line 111
            echo "                    <li><a href=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 111), "linkedin", [], "any", false, false, false, 111), "html", null, true);
            echo "\" target=\"_blank\"><i class=\"fa fa-linkedin\"></i></a></li>
                    ";
        }
        // line 113
        echo "                    ";
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 113), "instagram", [], "any", false, false, false, 113)) {
            // line 114
            echo "                    <li><a href=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 114), "instagram", [], "any", false, false, false, 114), "html", null, true);
            echo "\" target=\"_blank\"><i class=\"fa fa-instagram\"></i></a></li>
                    ";
        }
        // line 116
        echo "                </ul>
            </div>
            <p>Copyright 2019 ";
        // line 118
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 118), "site_name", [], "any", false, false, false, 118), "html", null, true);
        echo ". All Rights Reserved.</p>
        </div>
    </div>
    <!-- COPYRIGHT END -->

</footer>
<!-- FOOTER END -->";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\ndondo\\whauliers/themes/western/partials/footer.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  190 => 118,  186 => 116,  180 => 114,  177 => 113,  171 => 111,  168 => 110,  162 => 108,  159 => 107,  153 => 105,  151 => 104,  95 => 51,  74 => 33,  51 => 13,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!-- FOOTER START
            ============================================= -->
<footer id=\"footer\" class=\"wrapper clearfix\">

    <div class=\"container\">
        <div class=\"row\">
            <div class=\"footer-wrap row\">
                <!-- WIDGET FOOTER 1 START
                            ============================================= -->
                <div class=\"widget-footer col-md-4\">
                    <div class=\"short-desc\">
                        <div class=\"logo-footer\">
                            <img src=\"{{'assets/img/logo.png'|theme}}\" alt=\"\" /> Western Hauliers
                        </div>
                        <p>Phasellus et nisl tellus. Etiam facilisis eu nisi scelerisque faucibus. Proin semper suscipit
                            magna, nec imperdiet lacus semper vitae. Sed hendrerit enim non justo posuere placerat eget
                            purus mauris.</p>
                        <p>Etiam facilisis eu nisi scelerisque fabus. Proin semper suscipit magna, nec pediet lacus
                            semper.</p>
                    </div>
                </div>
                <!-- WIDGET FOOTER 1 END -->

                <!-- WIDGET FOOTER 2 START
                            ============================================= -->
                <div class=\"widget-footer col-md-4\">
                    <div class=\"recent-post\">
                        <h4 class=\"title\">Recent Post</h4>
                        <div class=\"footer-content\">
                            <div class=\"post-item\">
                                <a href=\"single-post.html\">
                                    <div class=\"post-thumb\">
                                        <img src=\"{{'assets/img/content/recent-post-thumb-1.jpg'|theme}}\" alt=\"\" />
                                        <div class=\"overlay\"></div>
                                    </div>
                                </a>
                                <div class=\"post-content\">
                                    <a href=\"single-post.html\">
                                        <h4>Your Blog Title Here</h4>
                                    </a>
                                    <p>Phasellus et nisl tellus. Etiam facilisis eu nisi scelerisque faucibus...</p>
                                    <div class=\"meta\">
                                        <span class=\"date\">02 August, 2015</span>
                                    </div>
                                </div>
                            </div>

                            <div class=\"post-item\">
                                <a href=\"single-post.html\">
                                    <div class=\"post-thumb\">
                                        <img src=\"{{'assets/img/content/recent-post-thumb-2.jpg'|theme}}\" alt=\"\" />
                                        <div class=\"overlay\"></div>
                                    </div>
                                </a>
                                <div class=\"post-content\">
                                    <a href=\"single-post.html\">
                                        <h4>Your Blog Title Here</h4>
                                    </a>
                                    <p>Phasellus et nisl tellus. Etiam facilisis eu nisi scelerisque faucibus...</p>
                                    <div class=\"meta\">
                                        <span class=\"date\">02 August, 2015</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- WIDGET FOOTER 2 END -->

                <!-- WIDGET FOOTER 3 START
                            ============================================= -->
                <div class=\"widget-footer col-md-4\">
                    <div class=\"contact-footer\">
                        <h4 class=\"title\">Contact Us</h4>
                        <div class=\"footer-content\">
                            <div class=\"contact-section\">
                                <h4>Our Office Address</h4>
                                <p>Western House</p>
                                <p>356, Bibi Titi Mohamed Street</p>
                                <p>Dar es Salaam, Tanzania</p>
                                <p>Telephone : + 255 23 289 890 788</p>
                                <p>Email : info@westernhauliers.com</p>
                            </div>
                            <div class=\"contact-section\">
                                <h4>Our Storage Address</h4>
                                <p>Boulevard des Capucines</p>
                                <p>356, Bibi Titi Mohamed Street</p>
                                <p>Dar es Salaam, Tanzania</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- WIDGET FOOTER 3 END -->
            </div>
        </div>
    </div>

    <!-- COPYRIGHT START
                ============================================= -->
    <div class=\"copyright text-center\">
        <div class=\"container\">
            <div class=\"social-icon\">
                <ul>
                    {% if this.theme.facebook %}
                    <li><a href=\"{{ this.theme.facebook }}\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a></li>
                    {% endif %}
                    {% if this.theme.twitter %}
                    <li><a href=\"{{ this.theme.twitter }}\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a></li>
                    {% endif %}
                    {% if this.theme.linkedin %}
                    <li><a href=\"{{ this.theme.linkedin }}\" target=\"_blank\"><i class=\"fa fa-linkedin\"></i></a></li>
                    {% endif %}
                    {% if this.theme.instagram %}
                    <li><a href=\"{{ this.theme.instagram }}\" target=\"_blank\"><i class=\"fa fa-instagram\"></i></a></li>
                    {% endif %}
                </ul>
            </div>
            <p>Copyright 2019 {{ this.theme.site_name }}. All Rights Reserved.</p>
        </div>
    </div>
    <!-- COPYRIGHT END -->

</footer>
<!-- FOOTER END -->", "C:\\xampp\\htdocs\\ndondo\\whauliers/themes/western/partials/footer.htm", "");
    }
}
