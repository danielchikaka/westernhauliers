<?php namespace dchikaka\Testimonial\Models;

use Model;

/**
 * Model
 */
class Testimonial extends Model
{
    use \October\Rain\Database\Traits\Validation;
    
    /*
     * Disable timestamps by default.
     * Remove this line if timestamps are defined in the database table.
     */
    public $timestamps = false;


    /**
     * @var string The database table used by the model.
     */
    public $table = 'dchikaka_testimonial_testimonials';

    /**
     * @var array Validation rules
     */
      public $rules = [
        'author_name' => 'required',
        'author_title' => 'required',
        'content' => 'required',
    ];

    public $attachOne = [
    'author_img' => 'System\Models\File',
    ];

}
