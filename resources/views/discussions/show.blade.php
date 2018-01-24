@extends('layouts.app')

@section('content')
<div class="panel panel-success">
  <div class="panel-heading">
    <div class="row">
      <div class="col-md-2 text-center">
        <img src="{{$discussion->user->avatar}}" width="50" height="75" alt="{{$discussion->user->name}}">
      </div>
      <div class="col-md-8">
        <h3>{{$discussion->title}}</h3>
        <small>by&nbsp;<a href="{{url('/discussions/?user='.$discussion->user->id)}}">{{$discussion->user->name}}</a>
          {{$discussion->created_at->diffForHumans()}}
          in&nbsp;the&nbsp;<a href="{{'/discussions/?channel='.$discussion->channel->id}}">
          {{$discussion->channel->title}}</a>&nbsp;channel
        </small>
      </div>
      <div class="col-md-2">
        @if(($discussion->user_id == auth()->id()) && ($discussion->closed == 0))
        <a href="{{route('discussions.edit', $discussion)}}" class="btn btn-default btn-edit">
          <i class="fa fa-pencil"></i>&nbsp;&nbsp;Edit
        </a>
        @endif
      </div>
    </div>
  </div>

  <div class="panel-body">
    <p>{!!Markdown::convertToHtml($discussion->content)!!}</p>
    <hr>
    <h3>Replies:</h3>
    <br>
    @foreach($replies as $rep)
    <div class="panel panel-info">
      <div class="panel-heading">
        <div class="row">
          <div class="col-md-1">
            <img src="{{$rep->user->avatar}}" width="24" height="36" alt="{{$rep->user->name}}">
          </div>
          <div class="col-md-11">by&nbsp;{{$rep->user->name}}&nbsp;{{$rep->created_at->diffForHumans()}}

            @if($discussion->user_id == auth()->id())
              @if($discussion->closed == 0)
              <span class="pull-right">
                <form action="{{route('replies.fave', $rep)}}" method="post">
                  {{csrf_field()}}
                  {{method_field('put')}}
                  <button type="submit" name="button" class="btn btn-primary btn-xs">
                    <i class="fa fa-star"></i>&nbsp;&nbsp;Mark as Favorite
                  </button>
                </form>
              </span>
              @elseif($rep->best)
              <span class="pull-right">
                <form action="{{route('replies.unfave', $rep)}}" method="post">
                  {{csrf_field()}}
                  {{method_field('put')}}
                  <button type="submit" name="button" class="btn btn-danger btn-xs">
                    <i class="fa fa-star"></i>&nbsp;&nbsp;Unmark as Favorite
                  </button>
                </form>
              </span>
              @endif
            @elseif($rep->best)
            <span class="pull-right">
              <i class="fa fa-star fa-3x"></i>&nbsp;&nbsp;Favorite Reply
            </span>
            @endif
          </div>
        </div>
      </div>

      <div class="panel-body">{!!Markdown::convertToHtml($rep->content)!!}</div>

      <div class="panel-footer">
        <h5>Likes:
          <span class="badge">{{$rep->likes()->count()}}</span>

          @if($rep->likes->where('user_id', auth()->id())->count())
          <a href="{{route('replies.unliked', $rep)}}" class="btn btn-danger btn-xs pull-right">
            <i class="fa fa-thumbs-o-down"></i>&nbsp;&nbsp;Unlike
          </a>
          @else
          <a href="{{route('replies.liked', $rep)}}" class="btn btn-success btn-xs pull-right">
            <i class="fa fa-thumbs-o-up"></i>&nbsp;&nbsp;Like
          </a>
          @endif
        </h5>
      </div>
    </div>
    <br>
    @endforeach

    <div class="panel panel-default">
      <div class="panel-body">
        @if($discussion->closed == 0)
        <form action="{{route('discussions.addreply', $discussion)}}" method="post">
          {{csrf_field()}}
          {{method_field('put')}}
          <div class="form-group">
            <textarea name="content" class="form-control" rows="4" placeholder="Your reply..."></textarea>
          </div>
          <button type="submit" name="button" class="btn btn-success">Submit</button>
        </form>
        @else
        <h4>This is discussion is closed.
          <small>({{$discussion->user->name}} can reopen the discussion by unmarking his/her favorite reply.)</small>
        </h4>
        @endif
      </div>
    </div>
  </div>
</div>
@endsection
