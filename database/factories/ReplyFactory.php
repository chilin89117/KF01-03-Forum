<?php
use Faker\Generator as Faker;

$factory->define(App\Reply::class, function (Faker $faker) {
  return [
    'user_id'       => $faker->numberBetween(1, 51),
    'discussion_id' => $faker->numberBetween(1, 50),
    'content'       => $faker->paragraph(3, true)
  ];
});
