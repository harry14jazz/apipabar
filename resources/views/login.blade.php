
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="{!! asset('../images/logo/covid.jpg') !!}">

    <title>Login</title>

    <!-- <link rel="canonical" href="https://getbootstrap.com/docs/4.1/examples/sign-in/"> -->

    <!-- Bootstrap core CSS -->
    <link href="{!! asset('../css/app.css') !!}" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="{!! asset('../css/signin.css') !!}" rel="stylesheet">
  </head>

  <body class="text-center">

  <form class="form-signin" method="POST" action="{{ route('login') }}">
    {{ csrf_field() }}

    <img class="mb-4" src="{!! asset('../images/logo/covid.jpg') !!}" alt="" width="200" height="120">

    <h1 class="h3 mb-3 font-weight-normal">{{ config('app.name') }}</h1>

    <label for="inputEmail" class="sr-only">Username</label>
    <input type="text" name="username" id="inputUsername" class="form-control mb-2" placeholder="Username" required autofocus>

    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>

    @if (session('status'))
    <div class="alert alert-danger">
      {{ session('status') }}!
    </div>
    @endif

    <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
    <label class="mt-5 mb-3 text-muted">&copy; Covid-19 Papua Barat</label>
  </form>

</body>
</html>
