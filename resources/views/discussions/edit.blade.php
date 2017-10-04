@extends('layouts.app')

@section('content')
<div class="panel panel-primary">
  <div class="panel-heading">Edit Discussion</div>

  <div class="panel-body">
    <form action="{{route('discussions.update', $discussion)}}" method="post">
      {{csrf_field()}}
      {{method_field('put')}}

      <div class="form-group">
        <label for="channel_id">Select a Channel</label>
        <select name="channel_id" id="channel_id" class="form-control">
          @foreach($channels as $c)
            @if($c->id == $discussion->channel_id)
            <option value="{{$c->id}}" selected>{{$c->title}}</option>
            @else
            <option value="{{$c->id}}">{{$c->title}}</option>
            @endif
          @endforeach
        </select>
      </div>

      <div class="form-group">
        <label for="title">Title</label>
        <input type="text" name="title" class="form-control" value="{{$discussion->title}}">
      </div>

      <div class="form-group">
        <label for="content">Content</label>
        <textarea name="content" rows="7" class="form-control">{{$discussion->content}}</textarea>
      </div>

      <button type="submit" name="button" class="btn btn-success">
        <i class="fa fa-magic"></i>&nbsp;&nbsp;Update Discussion</button>
    </form>
  </div>
</div>
@endsection
