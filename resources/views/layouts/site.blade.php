<!DOCTYPE html>
<html lang="en">
<head>
    <title>{{ setting('site.title') }}</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">

    <meta name="description" content="{{ setting('site.description') }}">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="_token" content="{{ csrf_token() }}"/>

    @include('partials.css')

    @yield('css')

</head>
<body>

@include('partials.nav')

@include('partials.menu')

@yield('content')

@include('partials.footer')

@include('partials.scripts')

@yield('scripts')

</body>
</html>




