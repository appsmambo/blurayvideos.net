@extends('layouts.app')
@section('content')
<div class="row">
    <div class="col-xs-12">
        <h1 class="page-header">
            Nueva película
            <a class="btn btn-warning btn-sm pull-right" href="{{ url('peliculas') }}">Cancelar</a>
            <input type="button" class="btn btn-primary btn-sm pull-right boton-formulario" value="Grabar">
        </h1>
    </div>
</div>
<div class="row">
    <div class="col-xs-12">
        <form action="{{ url('grabar-pelicula') }}" role="form" method="post" class="formulario" enctype="multipart/form-data">
            {{ csrf_field() }}
            <ul class="nav nav-tabs">
                <li class="active"><a href="#data" data-toggle="tab">Datos principales</a></li>
                <li><a href="#data_tecnica" data-toggle="tab">Detalles</a></li>
                <li><a href="#trailers" data-toggle="tab">Trailer y portadas</a></li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade in active" id="data">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="form-group">
                                <label for="titulo">Título de la película:</label>
                                <input class="form-control" name="titulo" id="titulo" required>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="sinopsis">Sinopsis:</label>
                                        <textarea name="sinopsis" id="sinopsis" class="form-control" rows="4" required></textarea>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="categoria">Categoría:</label><br>
                                                <select class="form-control" name="categoria" id="categoria" required>
                                                    <option value="">Seleccione</option>
                                                @forelse ($categorias as $categoria)
                                                    <option value="{{ $categoria->id }}">{{ $categoria->titulo }}</option>
                                                @empty
                                                    <option>No se encontraron registros.</option>
                                                @endforelse
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="stock">Stock:</label>
                                                <input type="number" class="form-control" name="stock" id="stock" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="estado">Seleccionar estado:</label>
                                                <select class="form-control" name="estado" id="estado">
                                                    <option value="1">En stock</option>
                                                    <option value="2">Oferta</option>
                                                    <option value="0">Agotado</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="precio">Precio normal:</label>
                                                <input type="text" class="form-control" name="precio" id="precio" required>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="precio_oferta">Precio oferta:</label>
                                                <input type="text" class="form-control" name="precio_oferta" id="precio_oferta">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="data_tecnica">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="form-group">
                                <label for="ficha_tecnica">Ficha técnica:</label>
                                <textarea name="ficha_tecnica" id="ficha_tecnica" class="form-control" rows="4" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="directores">Directores y actores:</label>
                                <textarea name="directores" id="directores" class="form-control" rows="4" required></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="trailers">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="form-group">
                                <label for="trailer">Trailer (link de youtube):</label>
                                <input type="text" class="form-control" name="trailer" id="trailer" required>
                            </div>
                            <div class="form-group">
                                <label for="portada1">Portada #1:</label>
                                <input type="file" id="portada1" name="imagen_1" data-vistaPrevia="#previaPortada1" class="subirArchivo">
                                <p class="help-block">JPG|GIF|PNG 400 ancho 600 alto pixeles</p>
                                <img id="previaPortada1" src="#" alt="Portada 1" class="img-responsive" style="display:none">
                            </div>
                            <div class="form-group">
                                <label for="portada2">Portada #2:</label>
                                <input type="file" id="portada2" name="imagen_2" data-vistaPrevia="#previaPortada2" class="subirArchivo">
                                <p class="help-block">JPG|GIF|PNG 400 ancho 600 alto pixeles</p>
                                <img id="previaPortada2" src="#" alt="Portada 2" class="img-responsive" style="display:none">
                            </div>
                            <div class="form-group">
                                <label for="portada3">Portada #3:</label>
                                <input type="file" id="portada3" name="imagen_3" data-vistaPrevia="#previaPortada3" class="subirArchivo">
                                <p class="help-block">JPG|GIF|PNG 400 ancho 600 alto pixeles</p>
                                <img id="previaPortada3" src="#" alt="Portada 3" class="img-responsive" style="display:none">
                            </div>
                            <div class="form-group">
                                <label for="portada4">Portada #4:</label>
                                <input type="file" id="portada4" name="imagen_4" data-vistaPrevia="#previaPortada4" class="subirArchivo">
                                <p class="help-block">JPG|GIF|PNG 400 ancho 600 alto pixeles</p>
                                <img id="previaPortada4" src="#" alt="Portada 4" class="img-responsive" style="display:none">
                            </div>
                            <div class="form-group">
                                <label for="portada5">Portada #5:</label>
                                <input type="file" id="portada5" name="imagen_5" data-vistaPrevia="#previaPortada5" class="subirArchivo">
                                <p class="help-block">JPG|GIF|PNG 400 ancho 600 alto pixeles</p>
                                <img id="previaPortada5" src="#" alt="Portada 5" class="img-responsive" style="display:none">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<div class="row">
    <div class="col-xs-12">
        <p class="page-header">
            <a class="btn btn-warning btn-sm pull-right" href="{{ url('peliculas') }}">Cancelar</a>
            <input type="button" class="btn btn-primary btn-sm pull-right boton-formulario" value="Grabar">
            <br><br>
        </p>
    </div>
</div>
@endsection
@section('scripts')
<script src="{{ url('dist/js/nueva-pelicula.js') }}" defer></script>
@endsection