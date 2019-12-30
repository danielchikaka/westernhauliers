<?php namespace dchikaka\Statistic\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateDchikakaStatisticStatistics extends Migration
{
    public function up()
    {
        Schema::create('dchikaka_statistic_statistics', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->integer('summary');
            $table->string('title');
            $table->text('content');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('dchikaka_statistic_statistics');
    }
}
