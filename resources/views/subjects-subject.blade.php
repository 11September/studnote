@extends('layouts.site')

@section('css')

@endsection

@section('content')

    @include('errors.message')

    @include('errors.errors')

    <section class="content-block">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 content-list ftco-animate">

                    <ul>
                        <li><a data-toggle="collapse" href="#collapse1">Все предметы</a></li>
                    </ul>

                    <div id="collapse1" class="panel-collapse">
                        <ul class="">

                            @foreach($subjects as $subject_list)
                                <li><a class="@if($subject->id == $subject_list->id) red @endif"
                                       href="{{ url('subjects',  $subject_list->id) }}">{{ $subject_list->name }}</a>
                                </li>
                            @endforeach

                        </ul>
                    </div>
                </div>
                <div class="col-lg-9 ftco-animate">
                    <div class="content-element">

                        <h2>{{ $subject->name }}</h2>

                        {!! $subject->description !!}

                    </div>
                </div>
            </div>
        </div>
    </section>


@endsection

@section('scripts')

@endsection