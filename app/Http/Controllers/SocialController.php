<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use SocialAuth;

// Eloquent Oauth for Laravel 5
// https://github.com/adamwathan/eloquent-oauth-l5

class SocialController extends Controller
{
  public function auth($provider)
  {
    return SocialAuth::authorize($provider);
  }

  //-------------------------------------------------------------------

  public function auth_callback($provider)
  {
    SocialAuth::login($provider, function($user, $details) {
      $user->avatar   = $details->avatar;
      $user->email    = $details->email;
      $user->name     = $details->full_name;
      $user->password = bcrypt('123456');

      $user->save();
    });

    return redirect()->route('discussions.index');
  }
}
