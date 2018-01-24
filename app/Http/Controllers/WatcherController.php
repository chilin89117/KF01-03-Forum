<?php
namespace App\Http\Controllers;
use App\Watcher;
use App\Discussion;
use App\User;
use Illuminate\Http\Request;

class WatcherController extends Controller
{
  public function watch(Discussion $discussion)
  {
    Watcher::create([
      'discussion_id' => $discussion->id,
      'user_id'       => auth()->id()
    ]);
    return redirect()->back()
                     ->with(['success'=>'You are watching a discussion.']);
  }

  public function unwatch(Discussion $discussion)
  {
    Watcher::where('discussion_id', $discussion->id)
           ->where('user_id', auth()->id())
           ->delete();
    return redirect()->back()
                     ->with(['success'=>'You have unwatched a discussion.']);
  }
}
