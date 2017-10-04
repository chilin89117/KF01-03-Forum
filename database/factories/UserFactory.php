<?php
use Faker\Generator as Faker;

$factory->define(App\User::class, function (Faker $faker) {
  static $password;

  return [
    'name'     => $faker->name,
    'admin'    => 0,
    'email'    => $faker->unique()->safeEmail,
    'password' => $password = bcrypt('123456'),
    'avatar'   => asset('avatars/default_avatar.png')
  ];
});
