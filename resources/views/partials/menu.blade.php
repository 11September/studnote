@guest
    @else
        <nav class="menu navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light ftco-animate" id="ftco-navbar">
            <div class="container d-flex align-items-center">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                        aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span>
                </button>
                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav mr-auto">

                        @if(Auth::user() && Auth::user()->role_id == 3)
                            <li class="nav-item {{ request()->is('groups') ? 'active' : '' }}"><a
                                        href="{{ url('/groups') }}" class="nav-link">Группы</a></li>
                            <li class="nav-item {{ request()->is('students') ? 'active' : '' }}"><a
                                        href="{{ url('/students') }}" class="nav-link">Студенты</a></li>
                            <li class="nav-item {{ request()->is('subjects') ? 'active' : '' }}"><a
                                        href="{{ url('/subjects') }}" class="nav-link">Предметы</a></li>
                        @endif

                        @if(Auth::user() && Auth::user()->role_id == 2)
                            <li class="nav-item {{ request()->is('subjects') ? 'active' : '' }}"><a
                                        href="{{ url('/subjects') }}" class="nav-link">Предметы</a></li>
                            <li class="nav-item {{ request()->is('subjects') ? 'active' : '' }}"><a
                                        href="{{ url('/marks') }}" class="nav-link">Оценки</a></li>
                        @endif
                    </ul>
                </div>
            </div>
        </nav>
        @endguest