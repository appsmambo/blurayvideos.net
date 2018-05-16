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
    public function postGrabarPelicula(Request $request)
    {
        // objeto pelicula
        $pelicula = new Pelicula;
        $pelicula->titulo = $request->titulo;
        $pelicula->sinopsis = $request->sinopsis;
        $pelicula->categoria = $request->categoria;
        $pelicula->estudio = $request->estudio;
        $pelicula->pais = $request->pais;
        $pelicula->fecha_lanzamiento = $request->fecha_lanzamiento;
        $pelicula->duracion = $request->duracion;
        $pelicula->stock = $request->stock;
        $pelicula->estado = $request->estado;
        $pelicula->precio = $request->precio;
        $pelicula->precio_oferta = $request->precio_oferta;

        // datos de multiselect
        if (is_array($request->videos) && count($request->videos)) {
            $videos = implode($request->videos, '|');
            $pelicula->video = $videos;
        } else {
            $pelicula->video = $request->videos;
        }
        if (is_array($request->audios) && count($request->audios)) {
            $audios = implode($request->audios, '|');
            $pelicula->audio = $audios;
        } else {
            $pelicula->audio = $request->audios;
        }
        if (is_array($request->idiomas) && count($request->idiomas)) {
            $idiomas = implode($request->idiomas, '|');
            $pelicula->idioma = $idiomas;
        } else {
            $pelicula->idioma = $request->idiomas;
        }
        if (is_array($request->subtitulos) && count($request->subtitulos)) {
            $subtitulos = implode($request->subtitulos, '|');
            $pelicula->subtitulos = $subtitulos;
        } else {
            $pelicula->subtitulos = $request->subtitulos;
        }

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
