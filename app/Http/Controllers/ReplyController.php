<?php
namespace App\Http\Controllers;
use App\Reply;
use App\Like;
use App\Discussion;
use Illuminate\Http\Request;

class ReplyController extends Controller
{
  public function liked(Reply $reply)
  {
    Like::create([
      'user_id'  => auth()->id(),
      'reply_id' => $reply->id
    ]);
    return redirect()->back();
  }

  public function unliked(Reply $reply)
  {
    Like::where('user_id', auth()->id())
      ->where('reply_id', $reply->id)
      ->delete();
    return redirect()->back();
  }

  public function fave(Reply $reply)
  {
    $reply->best = 1;
    $reply->save();
    $discussion = Discussion::find($reply->discussion_id);
    $discussion->closed = 1;
    $discussion->save();
    return redirect()->back()
                     ->with(['success'=>'Reply marked as favorite and discussion is closed.']);
  }

  public function unfave(Reply $reply)
  {
    $reply->best = 0;
    $reply->save();
    $discussion = Discussion::find($reply->discussion_id);
    $discussion->closed = 0;
    $discussion->save();
    return redirect()->back()
                     ->with(['success'=>'Reply unmarked as favorite and discussion is re-opened.']);
  }
}
