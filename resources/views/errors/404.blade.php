<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Page Not Found</title>
    <link href="{{asset('css/app.css')}}" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet">
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
        height: 15vh;
      }
      .flex-center {
        align-items: center;
        display: flex;
        justify-content: center;
      }
      .content {
        text-align: center;
      }
      .title {
        font-size: 36px;
        padding: 20px;
      }
    </style>
  </head>
  <body>
    <div class="flex-center full-height">
      <div class="content">
        <div class="title">Sorry, the page your are looking for can not be found.</div>
      </div>
    </div>
    <div class="text-center">
      <a href="{{route('discussions.index')}}" class="btn btn-primary btn-lg">Go to Discussions</a>
    </div>
  </body>
</html>