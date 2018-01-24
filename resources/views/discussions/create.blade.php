@extends('layouts.app')

@section('content')
<div class="panel panel-primary">
  <div class="panel-heading">Create a New Discussion</div>

  <div class="panel-body">
    <form action="{{route('discussions.store')}}" method="post">
      {{csrf_field()}}

      <div class="form-group">
        <label for="channel_id">Select a Channel</label>
        <select name="channel_id" id="channel_id" class="form-control">
          @foreach($channels as $c)
          <option value="{{$c->id}}">{{$c->title}}</option>
          @endforeach
        </select>
      </div>

      <div class="form-group">
        <label for="title">Title</label>
        <input type="text" name="title" class="form-control" value="{{old('title')}}">
      </div>

      <div class="form-group">
        <label for="content">Content</label>
        <textarea name="content" rows="7" class="form-control" placeholder="(markdowns ok)">{{old('content')}}</textarea>
      </div>

      <button type="submit" name="button" class="btn btn-success">
        <i class="fa fa-magic"></i>&nbsp;&nbsp;Submit Discussion</button>
    </form>
  </div>
</div>
@endsection
