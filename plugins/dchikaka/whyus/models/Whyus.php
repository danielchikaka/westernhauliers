<?php namespace dchikaka\Whyus\Models;

use Model;

/**
 * Model
 */
class Whyus extends Model
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
    public $table = 'dchikaka_whyus_whyus';

    /**
     * @var array Validation rules
     */
      public $rules = [
        'title' => 'required',
        'icon' => 'required',
        'content' => 'required',
    ];
}
