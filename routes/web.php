<?php
Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

//---------------------------------------------------------------------
// Eloquent Oauth for Laravel 5
// https://github.com/adamwathan/eloquent-oauth-l5
//---------------------------------------------------------------------
Route::get('{provider}/auth', 'SocialController@auth')->name('social.auth');
Route::get('{provider}/redirect', 'SocialController@auth_callback')->name('social.callback');

//---------------------------------------------------------------------

Route::group(['middleware'=>'auth'], function() {
  Route::get('/dashboard', 'DashboardController@index')->name('dashboard');

  Route::put('discussions/{discussion}/addreply', 'DiscussionController@addreply')
    ->name('discussions.addreply');

  Route::resource('channels', 'ChannelController')->except(['show']);
  Route::resource('discussions', 'DiscussionController')->except(['destroy']);
  Route::get('replies/{reply}/liked', 'ReplyController@liked')->name('replies.liked');
  Route::get('replies/{reply}/unliked', 'ReplyController@unliked')->name('replies.unliked');
  Route::put('replies/{reply}/fave', 'ReplyController@fave')->name('replies.fave');
  Route::put('replies/{reply}/unfave', 'ReplyController@unfave')->name('replies.unfave');

  Route::post('discussions/{discussion}/watch', 'WatcherController@watch')->name('watch');
  Route::delete('discussions/{discussion}/unwatch', 'WatcherController@unwatch')->name('unwatch');
});
