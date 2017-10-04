@extends('layouts.app')

@section('content')
<div class="panel panel-primary">
  <div class="panel-heading">Edit a Channel
    <div class="pull-right">
      <a href="{{route('channels.index')}}" class="btn btn-default btn-xs">
        <i class="fa fa-arrow-left"></i>&nbsp;&nbsp;Back</a>
    </div>
  </div>

  <div class="panel-body">
    <form action="{{route('channels.update', $channel)}}" method="post">
      {{csrf_field()}}
      {{method_field('put')}}
      <div class="form-group">
        <label for="name">New Channel Name</label>
        <input type="text" name="title" class="form-control" value="{{$channel->title}}" autofocus>
      </div>
      <button type="submit" name="button" class="btn btn-success">
        <i class="fa fa-magic"></i>&nbsp;&nbsp;Update Channel</button>
    </form>
  </div>
</div>
@endsection
