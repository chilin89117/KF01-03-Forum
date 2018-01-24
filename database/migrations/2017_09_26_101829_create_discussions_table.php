<?php
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDiscussionsTable extends Migration
{
  public function up()
  {
    Schema::create('discussions', function (Blueprint $table) {
      $table->increments('id');
      $table->integer('user_id')->unsigned();
      $table->integer('channel_id')->unsigned();
      $table->string('title');
      $table->string('slug');
      $table->text('content');
      $table->timestamps();
    });
  }

  public function down()
  { Schema::dropIfExists('discussions'); }
}
