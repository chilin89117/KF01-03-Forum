<?php
use Illuminate\Database\Seeder;

class RepliesTableSeeder extends Seeder
{
  public function run()
  { factory(App\Reply::class, 30)->create(); }
}
