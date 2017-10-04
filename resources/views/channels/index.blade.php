@extends('layouts.app')

@section('content')
<div class="panel panel-primary">
  <div class="panel-heading">Channels
    <div class="pull-right">
      <a href="{{route('channels.create')}}" class="btn btn-default btn-xs">
        <i class="fa fa-magic"></i>&nbsp;&nbsp;Create Channel</a>
    </div>
  </div>

  <div class="panel-body">
    @if($channels->count() > 0)
    <div class="table-responsive">
      <table class="table table-condensed">
        <thead>
          <tr>
            <th>Name</th>
            <th>Edit?</th>
            <th>Delete?</th>
          </tr>
        </thead>
        <tbody>
          @foreach($channels as $c)
          <tr>
            <td>{{$c->title}}</td>
            <td>
              <a href="{{route('channels.edit', $c)}}" class="btn btn-primary btn-xs">
                <i class="fa fa-pencil"></i>&nbsp;&nbsp;Edit</a>
            </td>
            <td>
              <form action="{{route('channels.destroy', $c)}}" method="post">
                {{csrf_field()}}
                {{method_field('delete')}}
                <button type="submit" name="button" class="btn btn-danger btn-xs">
                  <i class="fa fa-trash"></i>&nbsp;&nbsp;Delete</button>
              </form>
            </td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
    @else
    <h3>There are currently no channels.</h3>
    @endif
  </div>
</div>
@endsection
