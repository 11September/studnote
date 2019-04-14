@guest
    <li class="nav-item"><a href="{{ url('/example') }}" class="nav-link">Гордість школи</a></li>

    @else
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light ftco-animate" id="ftco-navbar">
            <div class="container d-flex align-items-center">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                        aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span>
                </button>
                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav mr-auto">
                        @if(Auth::user() && Auth::user()->role_id == 3)
                            <li class="nav-item"><a href="{{ url('/example') }}" class="nav-link">Группы</a></li>
                            <li class="nav-item"><a href="{{ url('/example') }}" class="nav-link">Студенты</a></li>
                            <li class="nav-item"><a href="{{ url('/example') }}" class="nav-link">Предметы</a></li>
                        @endif

                        @if(Auth::user() && Auth::user()->role_id == 2)
                            <li class="nav-item"><a href="{{ url('/example') }}" class="nav-link">Предметы</a></li>
                            <li class="nav-item"><a href="{{ url('/example') }}" class="nav-link">Оценки</a></li>
                        @endif
                    </ul>
                </div>
            </div>
        </nav>
@endguest