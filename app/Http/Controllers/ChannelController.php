<?php
namespace App\Http\Controllers;

use App\Channel;
use Illuminate\Http\Request;

class ChannelController extends Controller
{
  public function __construct()
  { $this->middleware('admin'); }

  public function index()
  { return view('channels.index'); }

  public function create()
  { return view('channels.create'); }

  public function store(Request $request)
  {
    $this->validate($request, [
      'title' => 'required|min:3|max:25|unique:channels'
    ]);

    Channel::create(['title' => $request->title]);

    return redirect()->route('channels.index')
                     ->with(['success'=>'Channel successfully created.']);
  }

  public function edit(Channel $channel)
  { return view('channels.edit', compact('channel')); }

  public function update(Request $request, Channel $channel)
  {
    $this->validate($request, [
      'title' => 'required|min:3|max:50|unique:channels'
    ]);

    $channel->title = $request->title;
    $channel->save();

    return redirect()->route('channels.index')
                     ->with(['success'=>'Channel successfully updated.']);
  }

  public function destroy(Channel $channel)
  {
    $channel->delete();

    return redirect()->route('channels.index')
                     ->with(['success'=>'Channel successfully deleted.']);
  }
}
