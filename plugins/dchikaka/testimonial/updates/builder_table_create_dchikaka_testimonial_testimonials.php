<?php namespace dchikaka\Testimonial\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateDchikakaTestimonialTestimonials extends Migration
{
    public function up()
    {
        Schema::create('dchikaka_testimonial_testimonials', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('author_name');
            $table->string('author_title');
            $table->string('author_img');
            $table->text('content');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('dchikaka_testimonial_testimonials');
    }
}
