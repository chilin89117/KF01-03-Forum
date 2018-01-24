<?php
use Illuminate\Database\Seeder;

class DiscussionsTableSeeder extends Seeder
{
  public function run()
  { factory(App\Discussion::class, 50)->create(); }
}
