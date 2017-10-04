<?php
namespace App\Http\Controllers;

use App\Discussion;
use App\Channel;
use App\User;
use App\Reply;
use Notification;
use App\Notifications\NewReplyAdded;
use Illuminate\Http\Request;

class DiscussionController extends Controller
{
  public function index(Request $req)
  {
    if($channel = Channel::find($req['channel'])) {

      $discussions = Discussion::where('channel_id', $channel->id)
                               ->orderBy('created_at', 'desc')
                               ->paginate(5);
      $discussions->withPath('discussions?channel='.$channel->id);

      $page_title = 'in the << '.$channel->title.' >> channel';

    } elseif ($user = User::find($req['user'])) {

      $discussions = Discussion::where('user_id', $user->id)
                               ->orderBy('created_at', 'desc')
                               ->paginate(5);
      $discussions->withPath('discussions?user='.$user->id);


      $page_title = 'by << '.$user->name.' >>';

    } elseif ($req->has('open')) {

      $discussions = Discussion::where('closed', 0)
                               ->orderBy('created_at', 'desc')
                               ->paginate(5);
      $discussions->withPath('discussions?open=');


      $page_title = 'that are still open';

    } elseif ($req->has('closed')) {

      $discussion_ids = Reply::where('best', 1)->get(['discussion_id']);

      $discussions = Discussion::where('closed', 1)
                               ->orderBy('created_at', 'desc')
                               ->paginate(5);
      $discussions->withPath('discussions?closed=');

      $page_title = 'that have been closed';

    } else {

      $discussions = Discussion::latest()->paginate(5);

      $page_title = '';
    }

    return view('discussions.index', compact('discussions', 'page_title'));
  }

  //-------------------------------------------------------------------

  public function create()
  {
    return view('discussions.create');
  }

  //-------------------------------------------------------------------

  public function store(Request $request)
  {
    $this->validate($request, [
      'channel_id' => 'required',
      'title'      => 'required|min:3|max:100',
      'content'    => 'required'
    ]);

    $discussion = Discussion::create([
      'user_id'    => auth()->id(),
      'channel_id' => $request->channel_id,
      'title'      => $request->title,
      'slug'       => str_slug($request->title),
      'content'    => $request->content,
    ]);

    return redirect()->route('discussions.show', $discussion)
                     ->with(['success'=>'Discussion successfully created.']);
  }

  //-------------------------------------------------------------------

  public function show(Discussion $discussion)
  {
    $replies = $discussion->replies()->latest()->with('user')->get();

    return view('discussions.show', compact('discussion', 'replies'));
  }

  //-------------------------------------------------------------------

  public function edit(Discussion $discussion)
  {
    return view('discussions.edit', compact('discussion'));
  }

  //-------------------------------------------------------------------

  public function update(Request $request, Discussion $discussion)
  {
    $this->validate($request, [
      'channel_id' => 'required',
      'title'      => 'required|min:3|max:100',
      'content'    => 'required'
    ]);

    $discussion->channel_id = $request->channel_id;
    $discussion->title      = $request->title;
    $discussion->content    = $request->content;

    $discussion->save();

    return redirect()->route('discussions.show', $discussion)
                     ->with(['success'=>'Discussion successfully updated.']);
  }

  //-------------------------------------------------------------------

  public function destroy(Discussion $discussion)
  {
      //
  }

  //-------------------------------------------------------------------

  // When a Reply is added to a Discussion
  public function addreply(Request $request, Discussion $discussion)
  {
    $this->validate($request, [
      'content' => 'required|max:255'
    ]);

    $discussion->replies()->create([
      'user_id'       => auth()->id(),
      'content'       => $request->content
    ]);

    $watchers_user_ids = $discussion->watchers()->get(['user_id']);
    $users = User::whereIn('id', $watchers_user_ids)->get();

    Notification::send($users, new NewReplyAdded($discussion));

    return redirect()->back()
                     ->with(['success'=>'Reply successfully added.']);
  }
}
