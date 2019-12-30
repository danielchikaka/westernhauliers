<?php namespace dchikaka\service\Controllers;

use Backend\Classes\Controller;
use BackendMenu;

class Services extends Controller
{
    public $implement = [        'Backend\Behaviors\ListController',        'Backend\Behaviors\FormController',        'Backend\Behaviors\ReorderController'    ];
    
    public $listConfig = 'config_list.yaml';
    public $formConfig = 'config_form.yaml';
    public $reorderConfig = 'config_reorder.yaml';

    public $requiredPermissions = [
        'dchikaka.service.manage_service' 
    ];

    public function __construct()
    {
        parent::__construct();
        BackendMenu::setContext('dchikaka.service', 'services', 'services');
    }
}