<?php namespace dchikaka\service\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateDchikakaServiceServices extends Migration
{
    public function up()
    {
        Schema::create('dchikaka_service_services', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('title');
            $table->text('teaser');
            $table->string('featured_img');
            $table->string('banner_img')->nullable();
            $table->string('slug');
            $table->text('content');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('dchikaka_service_services');
    }
}
