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
                <div class=\"widget-footer col-md-3\">
                    <div class=\"short-desc\">
                        <div class=\"logo-footer\">
                            <img src=\"";
        // line 13
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/logo.png");
        echo "\" alt=\"\" /> Western Hauliers
                        </div>
                        <p>Phasellus et nisl tellus. Etiam facilisis eu nisi scelerisque faucibus. Proin semper suscipit magna, nec imperdiet lacus semper vitae. Sed hendrerit enim non justo posuere placerat eget purus mauris.</p>
                        <p>Etiam facilisis eu nisi scelerisque fabus. Proin semper suscipit magna, nec pediet lacus semper.</p>
                    </div>
                </div>
                <!-- WIDGET FOOTER 1 END -->

                <!-- WIDGET FOOTER 2 START
                            ============================================= -->
                <div class=\"widget-footer col-md-3\">
                    <div class=\"recent-post\">
                        <h4 class=\"title\">Recent Post</h4>
                        <div class=\"footer-content\">
                            <div class=\"post-item\">
                                <a href=\"single-post.html\">
                                    <div class=\"post-thumb\">
                                        <img src=\"";
        // line 30
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
        // line 48
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
                <div class=\"widget-footer col-md-3\">
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

                <!-- WIDGET FOOTER 4 START
                            ============================================= -->
                <div class=\"widget-footer col-md-3\">
                    <div class=\"buy-now\">
                        <h4 class=\"title\">Read More !</h4>
                        <div class=\"footer-content\">
                            <p>Phasellus et nisl tellus. Etiam facilisis eu nisi scelerisque faucibus. Proin semper suscipit magna, nec imperdiet lacus semper vitae. Sed hendrerit enim non justo posuere placerat eget purus mauris.</p>

                            <a href=\"#\" class=\"button-normal white\">Read More</a>
                        </div>
                    </div>
                </div>
                <!-- WIDGET FOOTER 4 END -->
            </div>
        </div>
    </div>

    <!-- COPYRIGHT START
                ============================================= -->
    <div class=\"copyright text-center\">
        <div class=\"container\">
            <div class=\"social-icon\">
                <ul>
                    <li><a href=\"http://facebook.com\"><i class=\"fa fa-facebook\"></i></a></li>
                    <li><a href=\"http://twitter.com\"><i class=\"fa fa-twitter\"></i></a></li>
                    <li><a href=\"http://linkedin.com\"><i class=\"fa fa-linkedin\"></i></a></li>
                    <li><a href=\"http://instagram.com\"><i class=\"fa fa-instagram\"></i></a></li>
                </ul>
            </div>
            <p>Copyright 2019. All Rights Reserved.</p>
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
        return array (  92 => 48,  71 => 30,  51 => 13,  37 => 1,);
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
                <div class=\"widget-footer col-md-3\">
                    <div class=\"short-desc\">
                        <div class=\"logo-footer\">
                            <img src=\"{{'assets/img/logo.png'|theme}}\" alt=\"\" /> Western Hauliers
                        </div>
                        <p>Phasellus et nisl tellus. Etiam facilisis eu nisi scelerisque faucibus. Proin semper suscipit magna, nec imperdiet lacus semper vitae. Sed hendrerit enim non justo posuere placerat eget purus mauris.</p>
                        <p>Etiam facilisis eu nisi scelerisque fabus. Proin semper suscipit magna, nec pediet lacus semper.</p>
                    </div>
                </div>
                <!-- WIDGET FOOTER 1 END -->

                <!-- WIDGET FOOTER 2 START
                            ============================================= -->
                <div class=\"widget-footer col-md-3\">
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
                <div class=\"widget-footer col-md-3\">
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

                <!-- WIDGET FOOTER 4 START
                            ============================================= -->
                <div class=\"widget-footer col-md-3\">
                    <div class=\"buy-now\">
                        <h4 class=\"title\">Read More !</h4>
                        <div class=\"footer-content\">
                            <p>Phasellus et nisl tellus. Etiam facilisis eu nisi scelerisque faucibus. Proin semper suscipit magna, nec imperdiet lacus semper vitae. Sed hendrerit enim non justo posuere placerat eget purus mauris.</p>

                            <a href=\"#\" class=\"button-normal white\">Read More</a>
                        </div>
                    </div>
                </div>
                <!-- WIDGET FOOTER 4 END -->
            </div>
        </div>
    </div>

    <!-- COPYRIGHT START
                ============================================= -->
    <div class=\"copyright text-center\">
        <div class=\"container\">
            <div class=\"social-icon\">
                <ul>
                    <li><a href=\"http://facebook.com\"><i class=\"fa fa-facebook\"></i></a></li>
                    <li><a href=\"http://twitter.com\"><i class=\"fa fa-twitter\"></i></a></li>
                    <li><a href=\"http://linkedin.com\"><i class=\"fa fa-linkedin\"></i></a></li>
                    <li><a href=\"http://instagram.com\"><i class=\"fa fa-instagram\"></i></a></li>
                </ul>
            </div>
            <p>Copyright 2019. All Rights Reserved.</p>
        </div>
    </div>
    <!-- COPYRIGHT END -->

</footer>
<!-- FOOTER END -->", "C:\\xampp\\htdocs\\ndondo\\whauliers/themes/western/partials/footer.htm", "");
    }
}
