<?php
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddClosedToDiscussions extends Migration
{
  public function up()
  {
    Schema::table('discussions', function (Blueprint $table) {
      $table->boolean('closed')->after('content')->default(0);
    });
  }

  public function down()
  {
    Schema::table('discussions', function (Blueprint $table) {
      $table->dropColumn('closed');
    });
  }
}
