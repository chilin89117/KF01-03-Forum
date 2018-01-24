<?php
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLikesTable extends Migration
{
  public function up()
  {
    Schema::create('likes', function (Blueprint $table) {
      $table->increments('id');
      $table->integer('user_id')->unsigned();
      $table->integer('reply_id')->unsigned();
      $table->timestamps();
    });
  }

  public function down()
  { Schema::dropIfExists('likes'); }
}
