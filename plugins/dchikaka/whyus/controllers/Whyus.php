<?php namespace dchikaka\Whyus\Controllers;

use Backend\Classes\Controller;
use BackendMenu;

class Whyus extends Controller
{
    public $implement = [        'Backend\Behaviors\ListController',        'Backend\Behaviors\FormController',        'Backend\Behaviors\ReorderController'    ];
    
    public $listConfig = 'config_list.yaml';
    public $formConfig = 'config_form.yaml';
    public $reorderConfig = 'config_reorder.yaml';

    public $requiredPermissions = [
        'dchikaka.whyus.manage_whyus' 
    ];

    public function __construct()
    {
        parent::__construct();
        BackendMenu::setContext('dchikaka.Whyus', 'whyus', 'whyus');
    }
}
