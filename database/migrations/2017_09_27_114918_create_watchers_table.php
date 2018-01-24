<?php
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWatchersTable extends Migration
{
  public function up()
  {
    Schema::create('watchers', function (Blueprint $table) {
      $table->increments('id');
      $table->integer('discussion_id')->unsigned();
      $table->integer('user_id')->unsigned();
      $table->timestamps();
    });
  }

  public function down()
  { Schema::dropIfExists('watchers'); }
}
