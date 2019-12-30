<?php namespace dchikaka\Whyus\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateDchikakaWhyusWhyus extends Migration
{
    public function up()
    {
        Schema::create('dchikaka_whyus_whyus', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('title');
            $table->text('content');
            $table->string('icon');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('dchikaka_whyus_whyus');
    }
}
