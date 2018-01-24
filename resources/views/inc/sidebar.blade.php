<div class="panel panel-success">
  <div class="panel-heading">Actions</div>

  <div class="panel-body">
    <ul class="list-group">
      @if($channels->count() > 0)
      <li class="list-group-item">
        <a href="{{route('discussions.create')}}">
          <i class="fa fa-magic"></i>&nbsp;&nbsp;Create Discussion
        </a>
      </li>
      @endif
      <li class="list-group-item">
        <a href="{{url('/discussions/?user='.auth()->id())}}">
          <i class="fa fa-folder-open-o"></i>&nbsp;&nbsp;My Discussions</a>
      </li>
      <li class="list-group-item">
        <a href="{{url('/discussions/?open=')}}">
          <i class="fa fa-folder-open-o"></i>&nbsp;&nbsp;Open Discussions</a>
      </li>
      <li class="list-group-item">
        <a href="{{url('/discussions/?closed=')}}">
          <i class="fa fa-folder-o"></i>&nbsp;&nbsp;Closed Discussions</a>
      </li>
    </ul>
  </div>
</div>


<div class="panel panel-danger">
  <div class="panel-heading">Channels
  </div>

  <div class="panel-body">
    <ul class="list-group">
      @foreach($channels as $c)
        @if($c->id == request()['channel'])
        <li class="list-group-item" style="background-color:lightyellow;">
        @else
        <li class="list-group-item">
        @endif
          <a href="{{url('/discussions/?channel='.$c->id)}}">
            <i class="fa fa-bullhorn"></i>&nbsp;&nbsp;{{$c->title}}
          </a>
          <span class="badge">{{$c->discussions->count()}}</span>
        </li>
      @endforeach
    </ul>
  </div>
</div>
