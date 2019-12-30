<?php namespace dchikaka\Testimonial\Controllers;

use Backend\Classes\Controller;
use BackendMenu;

class Testimonial extends Controller
{
    public $implement = [        'Backend\Behaviors\ListController',        'Backend\Behaviors\FormController',        'Backend\Behaviors\ReorderController'    ];
    
    public $listConfig = 'config_list.yaml';
    public $formConfig = 'config_form.yaml';
    public $reorderConfig = 'config_reorder.yaml';

    public $requiredPermissions = [
        'dchikaka.testimonial.manage_testmonial' 
    ];

    public function __construct()
    {
        parent::__construct();
        BackendMenu::setContext('dchikaka.Testimonial', 'testimonials', 'testimonials');
    }
}
