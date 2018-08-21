<?php

namespace App\Http\Controllers;
use App\Categoria;
use App\Genero;
use App\Pelicula;

use Illuminate\Http\Request;

class PeliculaController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function getPeliculas()
    {
        $peliculas = Pelicula::where('estado', '<>', '-1')->get();
        return view('peliculas.index')->with('peliculas', $peliculas);
    }
    public function getNuevaPelicula()
    {
        $categorias = Categoria::all();
        $generos = Genero::all();
        return view('peliculas.nueva')
            ->with('categorias', $categorias)
            ->with('generos', $generos);
    }
    public function getEditarPelicula($id)
    {
        $categorias = Categoria::all();
        $generos = Genero::all();
        $pelicula = Pelicula::find($id);
        return view('peliculas.editar')
            ->with('categorias', $categorias)
            ->with('generos', $generos)
            ->with('pelicula', $pelicula);
    }
    public function postGrabarPelicula(Request $request)
    {
        $id = $request->id;
        
        // objeto pelicula
        $pelicula = new Pelicula;
        if ($request->id > 0) {
            // actualizar
            $pelicula->find($id);
        }

        $pelicula->titulo = $request->titulo;
        $pelicula->sinopsis = $request->sinopsis;
        $pelicula->ficha_tecnica = $request->ficha_tecnica;
        $pelicula->directores = $request->directores;
        $pelicula->precio = $request->precio;
        $pelicula->precio_oferta = $request->precio_oferta;
        $pelicula->stock = $request->stock;
        $pelicula->categoria = $request->categoria;
        $pelicula->genero = $request->genero;
        $pelicula->trailer = $request->trailer;
        $pelicula->estado = $request->estado;

        // las portadas
        if ($request->hasFile('imagen_1')) {
            $extension = $request->imagen_1->extension();
            $imagen_1 = str_replace('images/', '', $request->imagen_1->store('images'));
            $pelicula->imagen_1 = $imagen_1;
        }
        if ($request->hasFile('imagen_2')) {
            $extension = $request->imagen_2->extension();
            $imagen_2 = str_replace('images/', '', $request->imagen_2->store('images'));
            $pelicula->imagen_2 = $imagen_2;
        }
        if ($request->hasFile('imagen_3')) {
            $extension = $request->imagen_3->extension();
            $imagen_3 = str_replace('images/', '', $request->imagen_3->store('images'));
            $pelicula->imagen_3 = $imagen_3;
        }
        if ($request->hasFile('imagen_4')) {
            $extension = $request->imagen_4->extension();
            $imagen_4 = str_replace('images/', '', $request->imagen_4->store('images'));
            $pelicula->imagen_4 = $imagen_4;
        }
        if ($request->hasFile('imagen_5')) {
            $extension = $request->imagen_5->extension();
            $imagen_5 = str_replace('images/', '', $request->imagen_5->store('images'));
            $pelicula->imagen_5 = $imagen_5;
        }

        $pelicula->save();

        return redirect()->route('peliculas');
    }
    public function getBorrarPelicula($id)
    {
        $pelicula = Pelicula::find($id);
        $pelicula->estado = -1;
        $pelicula->save();
        return redirect()->route('peliculas');
    }
}
