<!DOCTYPE html>
<html lang="{{config('env.locale')}}">
  @include('inc.head')
  <body>
    @include('inc.nav')
    <div class="container">
      <div class="row">
        @auth
        <div class="col-md-4">
          @include('inc.sidebar')
        </div>
        <div class="col-md-8">
          @include('inc.msg')
          @yield('content')
        </div>
        @else
        <div class="col-md-8 col-md-offset-2">
          @include('inc.msg')
          @yield('content')
        </div>
        @endauth
      </div>
      @include('inc.footer')
    </div>
  </body>
</html>
