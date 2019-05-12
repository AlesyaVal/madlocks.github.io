<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateZayavkasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('zayavkas', function (Blueprint $table) {
            $table->increments('id');
			 $table->string("body");
			 $table->string("name");
			 $table->string("phone");
			 $table->string("email");
			 $table->text("comment")->nullable();
			 $table->integer("user_id");
			
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('zayavkas');
    }
}
