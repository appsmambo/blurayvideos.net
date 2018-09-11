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

Route::get('/', 'HomeController@index')->name('index');

Auth::routes();

Route::get('logout', 'Auth\LoginController@logout');

Route::get('/home', 'HomeController@home')->name('home');

Route::get('/peliculas', 'PeliculaController@getPeliculas')->name('peliculas');
Route::get('/nueva-pelicula', 'PeliculaController@getNuevaPelicula')->name('nuevaPelicula');
Route::get('/editar-pelicula/{id}', 'PeliculaController@getEditarPelicula')->name('editarPelicula');
Route::get('/borrar-pelicula/{id}', 'PeliculaController@getBorrarPelicula')->name('borrarPelicula');
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