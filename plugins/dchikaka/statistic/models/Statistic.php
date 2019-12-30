<?php namespace dchikaka\Statistic\Models;

use Model;

/**
 * Model
 */
class Statistic extends Model
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
    public $table = 'dchikaka_statistic_statistics';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];
}
