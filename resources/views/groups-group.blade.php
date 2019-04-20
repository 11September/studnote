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

                            @foreach($groups as $group_list)
                                <li><a class="@if($group->id == $group_list->id) red @endif"
                                       href="{{ url('groups',  $group_list->id) }}">{{ $group_list->name }}</a></li>
                            @endforeach

                        </ul>
                    </div>
                </div>
                <div class="col-lg-9 ftco-animate">
                    <div class="content-element">

                        <h2>Список учеников в группе</h2>

                        <table cellspacing="0">
                            <tr>
                                <td>№</td>
                                <td>П.І.Б.</td>
                            </tr>

                            @foreach($users as $user)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $user->name }}</td>
                                </tr>
                            @endforeach

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>


@endsection

@section('scripts')

@endsection