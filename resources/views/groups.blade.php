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

                    <div id="collapse1" class="panel-collapse collapse">
                        <ul class="">
                            <li><a href="#">Предмет1</a></li>
                            <li><a href="#">Предмет2</a></li>
                            <li><a href="#">Предмет3</a></li>
                            <li><a href="#">Предмет4</a></li>
                            <li><a href="#">Предмет5</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9 ftco-animate">
                    <div class="content-element">
                        <h2>ТУТ Пока Демо</h2>
                        <table cellspacing="0">
                            <tr>
                                <td>№</td>
                                <td>П.І.Б.</td>
                                <td><p class="rotate text-center">01.06.2019</p></td>
                                <td><p class="rotate text-center">02.06.2019</p></td>
                                <td><p class="rotate text-center">03.06.2019</p></td>
                                <td><p class="rotate text-center">04.06.2019</p></td>
                                <td><p class="rotate text-center">05.06.2019</p></td>
                                <td><p class="rotate text-center">06.06.2019</p></td>
                                <td><p class="rotate text-center">07.06.2019</p></td>
                                <td><p class="rotate text-center">08.06.2019</p></td>
                                <td><p class="rotate text-center">09.06.2019</p></td>
                                <td><p class="rotate text-center">010.06.2019</p></td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>ПрізвищеІ.Б.</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>ПрізвищеІ.Б.</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>ПрізвищеІ.Б.</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>ПрізвищеІ.Б.</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>ПрізвищеІ.Б.</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>


@endsection

@section('scripts')

@endsection