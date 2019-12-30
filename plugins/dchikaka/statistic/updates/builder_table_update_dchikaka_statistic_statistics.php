<?php namespace dchikaka\Statistic\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateDchikakaStatisticStatistics extends Migration
{
    public function up()
    {
        Schema::table('dchikaka_statistic_statistics', function($table)
        {
            $table->text('summary')->nullable(false)->unsigned(false)->default(null)->change();
        });
    }
    
    public function down()
    {
        Schema::table('dchikaka_statistic_statistics', function($table)
        {
            $table->integer('summary')->nullable(false)->unsigned(false)->default(null)->change();
        });
    }
}
