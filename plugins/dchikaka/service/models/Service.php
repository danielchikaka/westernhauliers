<?php namespace dchikaka\service\Models;

use Model;

/**
 * Model
 */
class Service extends Model
{
    use \October\Rain\Database\Traits\Validation;
    
    /*
     * Disable timestamps by default.
     * Remove this line if timestamps are defined in the database table.
     */
    public $timestamps = true;


    /**
     * @var string The database table used by the model.
     */
    public $table = 'dchikaka_service_services';

    /**
     * @var array Validation rules
     */
    public $rules = [
        'title' => 'required',
        'teaser' => 'required',
        'slug' => 'required',
        'content' => 'required',
    ];

    public $attachOne = [
    'featured_img' => 'System\Models\File',
    'banner_img' => 'System\Models\File',
    ];

    public function beforeUpdate(){
        $service = new Service;
        if(Input::has_file('featured_img')){
            $service->featured_img = Input::file('featured_img');
        }
    }
}
