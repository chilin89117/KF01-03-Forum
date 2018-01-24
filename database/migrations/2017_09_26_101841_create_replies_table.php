<?php
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRepliesTable extends Migration
{
  public function up()
  {
    Schema::create('replies', function (Blueprint $table) {
      $table->increments('id');
      $table->integer('user_id')->unsigned();
      $table->integer('discussion_id')->unsigned();
      $table->text('content');
      $table->timestamps();
    });
  }

  public function down()
  { Schema::dropIfExists('replies'); }
}
