<?php
use Illuminate\Database\Seeder;

class ChannelsTableSeeder extends Seeder
{
  public function run()
  {
    factory(App\Channel::class, 9)->create();
  }
}
