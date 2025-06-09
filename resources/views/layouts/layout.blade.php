<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>
    <link rel="icon" href="{{asset('/assets/images/icon.ico')}}">
    <link rel="stylesheet" href="{{'/assets/css/style.css'}}">
</head>
<body>

<header>
    <nav>
        <img src="{{asset('assets/images/icon1.png')}}" width="50">
        <a href="/materials">Материалы</a>
    </nav>
</header>
<main>@yield('content')</main>
<footer></footer>

</body>
</html>
