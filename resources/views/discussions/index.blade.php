@extends('layouts.app')

@section('content')
<div class="panel panel-success">
  <div class="panel-heading">All Discussions {{$page_title}}</div>

  <div class="panel-body">
    @if($discussions->count() > 0)
      @foreach($discussions as $dis)
      <div class="panel panel-info">
        <div class="panel-heading">
          <div class="row">
            <div class="col-md-2 text-center">
              <img src="{{$dis->user->avatar}}" width="50" height="75" alt="{{$dis->user->name}}">
            </div>
            <div class="col-md-10">
              <h3><a class="dis-title" href="{{route('discussions.show', $dis)}}">{{$dis->title}}</a></h3>
              <small>by&nbsp;<a href="{{url('/discussions/?user='.$dis->user->id)}}">{{$dis->user->name}}</a>
                {{$dis->created_at->diffForHumans()}}&nbsp;in&nbsp;the
                <a href="{{url('/discussions/?channel='.$dis->channel->id)}}">{{$dis->channel->title}}</a>&nbsp;channel
              </small>
            </div>
          </div>
        </div>

        <div class="panel-body">
          {!!Markdown::convertToHtml(str_limit($dis->content, 150))!!}
        </div>

        <div class="panel-footer">
          <h5>Replies:
            <span class="badge">{{$dis->replies()->count()}}</span>
            @if($dis->closed)
            <span class="pull-right">
              <i class="fa fa-exclamation fa-3x"></i>&nbsp;&nbsp;Closed
            </span>
            @else
            <span class="pull-right">
              @if($dis->watchers->where('user_id', auth()->id())->count())
              <form action="{{route('unwatch', $dis)}}" method="post">
                {{csrf_field()}}
                {{method_field('delete')}}
                <button type="submit" name="button" class="btn btn-danger btn-xs">
                  <span class="fa fa-eye-slash"></span>&nbsp;&nbsp;Unwatch
                </button>
              </form>
              @else
              <form action="{{route('watch', $dis)}}" method="post">
                {{csrf_field()}}
                <button type="submit" name="button" class="btn btn-success btn-xs">
                  <span class="fa fa-eye"></span>&nbsp;&nbsp;Watch
                </button>
              </form>
              @endif
            </span>
            @endif
          </h5>
        </div>
      </div>
      <br>
      @endforeach
      <div class="text-center">
        {{$discussions->links()}}
      </div>
    @else
    <h3>There are currently no discussions!</h3>
    @endif
  </div>
</div>
@endsection
