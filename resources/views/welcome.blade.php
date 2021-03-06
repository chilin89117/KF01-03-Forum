<!doctype html>
<html lang="{{config('app.locale')}}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{config('app.name')}}</title>
    <link rel="icon" href="/img/roses.png" type="image/png" sizes="16x16">
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=MedievalSharp" rel="stylesheet">
    <style>
      html, body {
        background-color: #fff;
        color: #636b6f;
        font-family: 'Raleway', sans-serif;
        font-weight: 100;
        height: 100vh;
        margin: 0;
      }
      .full-height {
        height: 100vh;
      }
      .flex-center {
        align-items: center;
        display: flex;
        justify-content: center;
      }
      .position-ref {
        position: relative;
      }
      .top-right {
        position: absolute;
        right: 10px;
        top: 18px;
      }
      .content {
        text-align: center;
      }
      .title {
        font-size: 72px;
      }
      .subtitle {
        font-size: 64px;
      }
      .small-txt {
        color: #636b6f;
        padding: 0 25px;
        font-size: 12px;
        font-weight: 600;
        letter-spacing: .1rem;
        text-decoration: none;
        text-transform: uppercase;
      }
      .m-b-md {
        color: #333;
        font-weight: bold;
      }
      .jumbotron {
        font-family: 'MedievalSharp', cursive;
        background-color: #ddd;
        padding: 50px;
        margin-bottom: 50px;
        border-radius: 30px;
      }
    </style>
  </head>

  <body>
    <div class="flex-center position-ref full-height">
      @if (Route::has('login'))
        <div class="top-right links">
          @auth
          <a href="{{route('discussions.index')}}" class="small-txt">Discussion Forum</a>
          @else
          <a href="{{route('login')}}" class="small-txt">Login</a>
          <a href="{{route('register')}}" class="small-txt">Register</a>
          @endauth
        </div>
      @endif
      <div class="content">
        <div class="jumbotron">
          <div class="image">
            <img src="{{asset('img/roses.png')}}" width="250" height="121" alt="roses">
          </div>
          <div class="title m-b-md">Wars of the Roses</div>
          <div class="subtitle m-b-md">Discussion Forum</div>
        </div>
        @guest
        <div class="small-txt">Login with :
          <a href="{{route('login')}}" class="small-txt">Email</a>
          <a href="{{route('social.auth', ['provider'=>'github'])}}" class="small-txt">GitHub</a>
          <!-- <a href="#" class="small-txt">Facebook</a> -->
        </div>
        @endguest
      </div>
    </div>
  </body>
</html>
