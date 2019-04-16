<nav class="py-3 menu-block">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <a class="navbar-brand ftco-animate" href="{{ url('/') }}">
                    <img src="{{ asset('images/logo.png') }}" alt="image">
                </a>
            </div>
            <div class="col-sm-6">


                <div class="social-block ftco-animate">

                    <div class="account-block ">
                        @guest
                            {{--<a href="{{ route('login') }}">{{ __('Войти') }}</a>--}}
                            {{--<a href="{{ route('register') }}">{{ __('Регистрация') }}</a>--}}

                            @else
                                <a class="btn btn-secondary dropdown-toggle" href="#" role="button"
                                   id="dropdownMenuLink"
                                   data-toggle="dropdown" aria-haspopup="true"
                                   aria-expanded="false">{{ Auth::user()->name }}  {{ Auth::user()->role_id }}</a>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                          style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                                @endguest
                    </div>


                    <ul class="ftco-footer-social list-unstyled mt-3 topper social-item">

                        @if(setting('site.facebook'))
                            <li class="ftco-animate">
                                <a href="{{ setting('site.facebook') }}">
                                    <span class="icon-facebook"></span>
                                </a>
                            </li>
                        @endif

                        @if(setting('site.twitter'))
                            <li class="ftco-animate">
                                <a href="{{ setting('site.twitter') }}">
                                    <span class="icon-twitter"></span>
                                </a>
                            </li>
                        @endif

                        @if(setting('site.instagram'))
                            <li class="ftco-animate">
                                <a href="{{ setting('site.instagram') }}">
                                    <span class="icon-instagram"></span>
                                </a>
                            </li>
                        @endif

                    </ul>
                </div>
            </div>
        </div>
    </div>
</nav>