<?php
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddBestToReplies extends Migration
{
  public function up()
  {
    Schema::table('replies', function (Blueprint $table) {
      $table->boolean('best')->after('content')->nullable();
    });
  }

  public function down()
  {
    Schema::table('replies', function (Blueprint $table) {
      $table->dropColumn('best');
    });
  }
}
