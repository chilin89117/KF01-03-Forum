@extends('layouts.app')

@section('content')
<div class="panel panel-primary">
  <div class="panel-heading">Create a Channel
    <div class="pull-right">
      <a href="{{route('channels.index')}}" class="btn btn-default btn-xs">
        <i class="fa fa-arrow-left"></i>&nbsp;&nbsp;Back</a>
    </div>
  </div>

  <div class="panel-body">
    <form action="{{route('channels.store')}}" method="post">
      {{csrf_field()}}
      <div class="form-group">
        <label for="name">Channel Name</label>
        <input type="text" name="title" class="form-control" autofocus>
      </div>
      <button type="submit" name="button" class="btn btn-success">
        <i class="fa fa-magic"></i>&nbsp;&nbsp;Create Channel</button>
    </form>
  </div>
</div>
@endsection
