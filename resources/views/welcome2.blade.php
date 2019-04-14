<!DOCTYPE html>
<html lang="en">
<head>
    <title>Dr.care - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="{{ asset('css/open-iconic-bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/animate.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.theme.default.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/magnific-popup.css') }}">
    <link rel="stylesheet" href="{{ asset('css/aos.css') }}">
    <link rel="stylesheet" href="{{ asset('css/ionicons.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/bootstrap-datepicker.css') }}">
    <link rel="stylesheet" href="{{ asset('css/jquery.timepicker.css') }}">
    <link rel="stylesheet" href="{{ asset('css/flaticon.css') }}">
    <link rel="stylesheet" href="{{ asset('css/icomoon.css') }}">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
</head>
<body>
<nav class="py-4 menu-block">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <a class="navbar-brand ftco-animate" href="index.html"><img src="images/logo.png" alt="image"></a>
            </div>
            <div class="col-sm-6">
                <div class="social-block">
                    <ul class="ftco-footer-social list-unstyled mt-3 topper social-item">
                        <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                        <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                        <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                    </ul>
                </div>
                <div class="account-block ftco-animate">
                    <a href="#">Войти</a>
                    <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Имя</a>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                        <a class="dropdown-item" href="#">Выйти</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light ftco-animate" id="ftco-navbar">
    <div class="container d-flex align-items-center">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>
        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active"><a href="index.html" class="nav-link pl-0">Спілкування з учнями</a></li>
                <li class="nav-item"><a href="#" class="nav-link">Електронний журнал</a></li>
                <li class="nav-item"><a href="#" class="nav-link">Звіти</a></li>
                <li class="nav-item"><a href="#" class="nav-link">Розклад занять</a></li>
                <li class="nav-item"><a href="#" class="nav-link">Гордість школи</a></li>
            </ul>
        </div>
    </div>
</nav>
<section class="entrance-block">
    <div class="container">
        <div class="row d-flex align-items-stretch no-gutters ftco-animate">
            <div class="p-4 p-md-6 order-md-last bg-light">
                <div class="card-body">
                    <form method="POST" action="{{ route('login') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="email"
                                   class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email"
                                       class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email"
                                       value="{{ old('email') }}" required autofocus>

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password"
                                   class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password"
                                       class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}"
                                       name="password" required>

                                @if ($errors->has('password'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-6 offset-md-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember"
                                           id="remember" {{ old('remember') ? 'checked' : '' }}>

                                    <label class="form-check-label" for="remember">
                                        {{ __('Remember Me') }}
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Login') }}
                                </button>

                                @if (Route::has('password.request'))
                                    <a class="btn btn-link" href="{{ route('password.request') }}">
                                        {{ __('Forgot Your Password?') }}
                                    </a>
                                @endif
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END nav -->

<footer class="">
    <div class="foot-block">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 ftco-animate indent">
                    <div class="p-4 p-md-5 order-md-last bg-light">
                        <form action="#">
                            <h2>Оставить заявку</h2>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <textarea name="" id="" cols="30" rows="7" class="form-control"
                                          placeholder="Сообщение"></textarea>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Отправить" class="btn btn-primary py-3 px-5">
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 ftco-animate indent">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2516.6757346191625!2d34.8010196156361!3d50.892711663279904!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x412901ef1efd72e5%3A0xaa5fd2ec353484f8!2z0YPQuy4g0J_RgNC-0LrQvtGE0YzQtdCy0LAsIDM4LCDQodGD0LzRiywg0KHRg9C80YHQutCw0Y8g0L7QsdC70LDRgdGC0YwsIDQwMDAw!5e0!3m2!1sru!2sua!4v1555241613468!5m2!1sru!2sua"
                            frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
                <div class="col-lg-4 ftco-animate indent">
                    <div class="poster">
                        <h3>Контакты</h3>
                        <ul>
                            <li>40024, м.Суми, вул. Прокоф`єва, 38</li>
                            <li>(0542) 63-55-86</li>
                            <li>(0542) 36-51-59</li>
                            <li>email: <a href="#">shtc-pto@ukr.net</a></li>
                            <li>fax: 63-55-86</li>
                        </ul>
                        <h4>До нас можна доїхати: </h4>
                        <ul>
                            <li>маршрутними таксі № 2, 9, 17а, 21, 51, 52, 53</li>
                            <li>тролейбус №15, 15а</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>

<script src="{{ asset('js/jquery.min.js') }}"></script>
<script src="{{ asset('js/jquery-migrate-3.0.1.min.js') }}"></script>
<script src="{{ asset('js/popper.min.js') }}"></script>
<script src="{{ asset('js/bootstrap.min.js') }}"></script>
<script src="{{ asset('js/jquery.waypoints.min.js') }}"></script>
<script src="{{ asset('js/jquery.stellar.min.js') }}"></script>
<script src="{{ asset('js/owl.carousel.min.js') }}"></script>
<script src="{{ asset('js/aos.js') }}"></script>
<script src="{{ asset('js/scrollax.min.js') }}"></script>
<script src="{{ asset('js/main.js') }}"></script>
</body>
</html>




