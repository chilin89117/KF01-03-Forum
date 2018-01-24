<?php
use Faker\Generator as Faker;

$factory->define(App\Discussion::class, function (Faker $faker) {
  $user_id    = $faker->numberBetween(1, 51);
  $channel_id = $faker->numberBetween(1, 9);
  $title      = $faker->sentence(6, true);
  $slug       = str_slug($title);
  $content    = $faker->paragraphs(3, true);
  return [
    'user_id'    => $user_id,
    'channel_id' => $channel_id,
    'title'      => $title,
    'slug'       => $slug,
    'content'    => $content
  ];
});
