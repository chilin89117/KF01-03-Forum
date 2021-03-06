<?php
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
  public function up()
  {
    Schema::create('users', function (Blueprint $table) {
      $table->increments('id');
      $table->string('name');
      $table->boolean('admin')->default(0);
      $table->string('email')->unique();
      $table->string('password');
      $table->string('avatar')->default('http://kf01-03-forum.test/avatars/default_avatar.png');
      $table->rememberToken();
      $table->timestamps();
    });
  }
  
  public function down()
  { Schema::dropIfExists('users'); }
}
