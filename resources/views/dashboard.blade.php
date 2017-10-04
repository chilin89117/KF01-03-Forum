@extends('layouts.app')

@section('content')
<div class="panel panel-primary">
  <div class="panel-heading">Dashboard</div>
  <div class="panel-body">
    <div class="row">
      <div class="col-md-12">
        <a href="{{route('channels.index')}}" class="btn btn-primary">
          <i class="fa fa-bull-horn"></i>&nbsp;&nbsp;Manage Channels
        </a>
      </div>
    </div>
    <br><br>

    <div class="row">
      <div class="col-md-6">
        <div class="panel panel-warning">
          <div class="panel-heading">Users</div>
          <div class="panel-body text-center">
            <h1>{{App\User::count()}}</h1>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="panel panel-primary">
          <div class="panel-heading">Channels</div>
          <div class="panel-body text-center">
            <h1>{{App\Channel::count()}}</h1>
          </div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-6">
        <div class="panel panel-info">
          <div class="panel-heading">Discussions</div>
          <div class="panel-body text-center">
            <h1>{{App\Discussion::count()}}</h1>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="panel panel-danger">
          <div class="panel-heading">Replies</div>
          <div class="panel-body text-center">
            <h1>{{App\Reply::count()}}</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection
