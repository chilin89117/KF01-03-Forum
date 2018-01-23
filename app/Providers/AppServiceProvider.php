<?php
namespace App\Providers;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use App\Channel;
use View;

class AppServiceProvider extends ServiceProvider
{
  public function boot()
  {
    Schema::defaultStringLength(191);

    View::share('channels', Channel::orderBy('title')->get())
      ->except(['auth.login', 'auth.register']);
  }

  public function register()
  {
    //
  }
}
