<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::auth();

Route::get('/home', 'HomeController@index');

Route::get('/peliculas', 'PeliculaController@getPeliculas')->name('peliculas');
Route::get('/nueva-pelicula', 'PeliculaController@getNuevaPelicula')->name('nuevaPelicula');
Route::post('/grabar-pelicula', 'PeliculaController@postGrabarPelicula')->name('grabarPelicula');

Route::get('storage/{filename}', function ($filename)
{
    $path = storage_path('app/images/' . $filename);

    if (!File::exists($path)) {
        abort(404);
    }

    $file = File::get($path);
    $type = File::mimeType($path);

    $response = Response::make($file, 200);
    $response->header("Content-Type", $type);

    return $response;
});