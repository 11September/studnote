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

                    @if(setting('site.map'))
                        {!! setting('site.map') !!}
                    @endif

                </div>
                <div class="col-lg-4 ftco-animate indent">
                    <div class="poster">
                        @if(setting('site.contacts'))
                            <h3>Контакты</h3>

                            {!! setting('site.contacts') !!}
                        @endif

                        @if(setting('site.addresses'))
                            <h4>До нас можна доїхати: </h4>

                            {!! setting('site.addresses') !!}
                        @endif

                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>