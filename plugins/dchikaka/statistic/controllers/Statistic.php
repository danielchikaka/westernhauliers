<?php namespace dchikaka\Statistic\Controllers;

use Backend\Classes\Controller;
use BackendMenu;

class Statistic extends Controller
{
    public $implement = [        'Backend\Behaviors\ListController',        'Backend\Behaviors\FormController',        'Backend\Behaviors\ReorderController'    ];
    
    public $listConfig = 'config_list.yaml';
    public $formConfig = 'config_form.yaml';
    public $reorderConfig = 'config_reorder.yaml';

    public $requiredPermissions = [
        'dchikaka.statistic.manage_statistics' 
    ];

    public function __construct()
    {
        parent::__construct();
        BackendMenu::setContext('dchikaka.Statistic', 'statistics', 'statistics');
    }
}
