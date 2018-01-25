<?php
use App\User;

return [
  'model' => User::class,
  'table' => 'oauth_identities',
  'providers' => [
    'facebook' => [
      'client_id' => '12345678',
      'client_secret' => 'y0ur53cr374ppk3y',
      'redirect_uri' => 'https://example.com/your/facebook/redirect',
      'scope' => [],
    ],
    'google' => [
      'client_id' => '12345678',
      'client_secret' => 'y0ur53cr374ppk3y',
      'redirect_uri' => 'https://example.com/your/google/redirect',
      'scope' => [],
    ],
    'github' => [
      'client_id' => '',
      'client_secret' => '',
      'redirect_uri' => 'http://kf01-03-forum.test/github/redirect',
      'scope' => [],
    ],
  ],
];
