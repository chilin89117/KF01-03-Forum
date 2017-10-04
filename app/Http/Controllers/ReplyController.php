<?php
namespace App\Http\Controllers;

use App\Reply;
use App\Like;
use App\Discussion;
use Illuminate\Http\Request;

class ReplyController extends Controller
{
  // When "like" button is clicked for a reply ------------------------
  public function liked(Reply $reply)
  {
    Like::create([
      'user_id'  => auth()->id(),
      'reply_id' => $reply->id
    ]);

    return redirect()->back();
  }

  //-------------------------------------------------------------------

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

  //-------------------------------------------------------------------

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
