<?php
use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
  public function run()
  {
    // Create an admin
    // App\User::create([
    //   'name'     => 'Admin',
    //   'admin'    => 1,
    //   'email'    => 'admin@03-forum.dev',
    //   'password' => bcrypt('123456'),
    //   'avatar'   => asset('avatars/default_avatar.png')
    // ]);

    factory(App\User::class, 50)->create();
  }
}
