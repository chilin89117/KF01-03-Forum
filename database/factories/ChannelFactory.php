<?php
use Faker\Generator as Faker;

$factory->define(App\Channel::class, function (Faker $faker) {
  return [ 'title' => $faker->words(3, true) ];
});
