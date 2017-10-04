<?php
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
  public function run()
  {
    $this->call(UsersTableSeeder::class);
    $this->call(ChannelsTableSeeder::class);
    $this->call(DiscussionsTableSeeder::class);
    $this->call(RepliesTableSeeder::class);
  }
}
