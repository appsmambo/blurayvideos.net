<?php

namespace App\Http\Controllers;
use App\Categoria;
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
        $peliculas = Pelicula::all();
        return view('peliculas.index')->with('peliculas', $peliculas);
    }
    public function getNuevaPelicula()
    {
        $categorias = Categoria::all();
        return view('peliculas.nueva')->with('categorias', $categorias);
    }
    public function postGrabarPelicula(Request $request)
    {
        // objeto pelicula
        $pelicula = new Pelicula;
        $pelicula->titulo = $request->titulo;
        $pelicula->sinopsis = $request->sinopsis;
        $pelicula->ficha_tecnica = $request->ficha_tecnica;
        $pelicula->directores = $request->directores;
        $pelicula->precio = $request->precio;
        $pelicula->precio_oferta = $request->precio_oferta;
        $pelicula->stock = $request->stock;
        $pelicula->categoria = $request->categoria;
        $pelicula->trailer = $request->trailer;
        $pelicula->estado = $request->estado;

        // las portadas
        if ($request->hasFile('imagen_1')) {
            $extension = $request->imagen_1->extension();
            $pelicula->imagen_1 = $request->imagen_1->store('images');
        }
        if ($request->hasFile('imagen_2')) {
            $extension = $request->imagen_2->extension();
            $pelicula->imagen_2 = $request->imagen_2->store('images');
        }
        if ($request->hasFile('imagen_3')) {
            $extension = $request->imagen_3->extension();
            $pelicula->imagen_3 = $request->imagen_3->store('images');
        }
        if ($request->hasFile('imagen_4')) {
            $extension = $request->imagen_4->extension();
            $pelicula->imagen_4 = $request->imagen_4->store('images');
        }
        if ($request->hasFile('imagen_5')) {
            $extension = $request->imagen_5->extension();
            $pelicula->imagen_5 = $request->imagen_5->store('images');
        }

        $pelicula->save();
        $idPelicula = $pelicula->id;
        echo $idPelicula;
/*
        // grabar generos
        if (is_array($request->generos) && count($request->generos)) {
            $generos = implode($request->generos, '|');
            $pelicula->generos = $generos;
        } else {
            $pelicula->generos = $request->generos;
        }*/

        return redirect()->route('peliculas');
    }
}
