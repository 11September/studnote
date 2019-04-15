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

Route::get('/', 'WelcomeController@welcome')->name('welcome');
Route::get('/home', 'HomeController@index')->name('home');
Route::post('/feedback', 'WelcomeController@feedback')->name('feedback');
Route::get('/example', 'WelcomeController@example')->name('example');

Auth::routes();

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::middleware(['auth', 'canAdmin'])->group(function () {

    Route::get('/groups', 'WelcomeController@groups')->name('groups');
    Route::get('/students', 'WelcomeController@students')->name('students');
    Route::get('/subjects', 'WelcomeController@subjects')->name('subjects');
    Route::get('/marks', 'WelcomeController@marks')->name('subjects');

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
