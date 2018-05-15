<?php

namespace App\Http\Controllers;
use App\Categoria;
use App\Estudio;
use App\Formato;
use App\Genero;
use App\Pelicula;
use App\Pais;

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
        $estudios = Estudio::all();
        $formatos = Formato::all();
        $generos = Genero::all();
        $paises = Pais::all();
        return view('peliculas.nueva')
                ->with('categorias', $categorias)
                ->with('estudios', $estudios)
                ->with('formatos', $formatos)
                ->with('generos', $generos)
                ->with('paises', $paises);
    }
}
