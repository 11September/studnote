<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::get('/', function () {
    return view('welcome');
});

Route::get('/example', function () {
    return view('example');
});

Route::middleware(['auth', 'canAdmin'])->group(function () {

    Route::group(['as' => 'team.'], function () {
        Route::resource('teams', 'TeamsController')->except([
            'show'
        ]);
    });


    Route::middleware(['admin'])->group(function () {
        Route::group(['as' => 'measure.'], function () {
            Route::resource('measures', 'MeasuresController')->only([
                'index', 'store', 'destroy'
            ]);
        });
    });


    Route::middleware(['coach'])->group(function () {
        Route::group(['as' => 'notes.'], function () {
            Route::resource('notes', 'NotesController')->except([
                'show'
            ]);
        });
    });
});
