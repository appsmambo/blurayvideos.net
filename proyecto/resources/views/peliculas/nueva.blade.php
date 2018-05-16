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
                                <label for="estudio">Seleccionar estudio:</label>
                                <select class="form-control" name="estudio" id="estudio" required>
                                    <option value="">Seleccione</option>
                                @forelse ($estudios as $estudio)
                                    <option value="{{ $estudio->id }}">{{ $estudio->titulo }}</option>
                                @empty
                                    <option>No se encontraron registros.</option>
                                @endforelse
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Formato:</label><br>
                    @forelse ($formatos as $formato)
                        <label class="checkbox-inline">
                            <input type="checkbox" name="formatos[]" value="{{ $formato->id }}">
                            {{ $formato->titulo }}
                        </label>
                    @empty
                    @endforelse
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="pais">Seleccionar país:</label>
                                <select class="form-control" name="pais" id="pais">
                                    <option value="">Seleccione</option>
                                @forelse ($paises as $pais)
                                    <option value="{{ $pais->codigo }}">{{ $pais->titulo }}</option>
                                @empty
                                    <option>No se encontraron registros.</option>
                                @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="fecha_lanzamiento">Año de lanzamiento:</label>
                                <input type="number" class="form-control" name="fecha_lanzamiento" id="fecha_lanzamiento">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="duracion">Duración:</label>
                                <input type="number" class="form-control" name="duracion" id="duracion">
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
                                <input type="text" class="form-control" name="precio_oferta" disabled id="precio_oferta">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="generos">Seleccionar genero:</label>
                        <select multiple="multiple" class="multiSelect" name="generos[]" id="generos">
                        @forelse ($generos as $genero)
                            <option value="{{ $genero->id }}">{{ $genero->titulo }}</option>
                        @empty
                            <option>No se encontraron registros.</option>
                        @endforelse
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="videos">Seleccionar video:</label>
                        <select multiple="multiple" class="multiSelect" name="videos[]" id="videos">
                            <option>Aspect ratio: 1.33:1 (19)</option>
                            <option>Aspect ratio: 1.78:1 (188)</option>
                            <option>Aspect ratio: 1.84:1 (1)</option>
                            <option>Aspect ratio: 1.85:1 (1)</option>
                            <option>Aspect ratio: 2.00:1 (3)</option>
                            <option>Aspect ratio: 2.39:1 (1)</option>
                            <option>Codec: HEVC / H.265 (1)</option>
                            <option>Codec: MPEG-2 (29)</option>
                            <option>Codec: MPEG-4 AVC (176)</option>
                            <option>Codec: VC-1 (8)</option>
                            <option>Resolution: 4K (2160p) (1)</option>
                            <option>Resolution: 480i (NTSC) (27)</option>
                            <option>Resolution: 576i (PAL) (1)</option>
                            <option>Resolution: 1080i (6)</option>
                            <option>Resolution: 1080p (178)</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="audios">Seleccionar audio:</label>
                        <select multiple="multiple" class="multiSelect" name="audios[]" id="audios">
                            <option>Español: Dolby Digital 2.0 (33)</option>
                            <option>Español: Dolby Digital 5.1 (19)</option>
                            <option>Español: Dolby Digital Mono (10)</option>
                            <option>Español: Dolby TrueHD 5.1 (1)</option>
                            <option>Español: DTS-HD MA 2.0 (2)</option>
                            <option>Español: DTS-HD MA 5.1 (2)</option>
                            <option>Español: DTS 2.0 (25)</option>
                            <option>Español: DTS 5.1 (12)</option>
                            <option>Español: LPCM 2.0 (3)</option>
                            <option>Español Castellano: Dolby Digital 2.0 (5)</option>
                            <option>Español Castellano: Dolby Digital 5.1 (1)</option>
                            <option>Inglés: Dolby ATMOS (2)</option>
                            <option>Inglés: Dolby Digital 2.0 (25)</option>
                            <option>Inglés: Dolby Digital 5.1 (28)</option>
                            <option>Inglés: Dolby Digital 5.1 EX (2)</option>
                            <option>Inglés: Dolby Digital Mono (4)</option>
                            <option>Inglés: Dolby TrueHD 5.1 (20)</option>
                            <option>Inglés: Dolby TrueHD 7.1 (13)</option>
                            <option>Inglés: DTS-HD HR 5.1 (1)</option>
                            <option>Inglés: DTS-HD MA 5.1 (107)</option>
                            <option>Inglés: DTS-HD MA 7.1 (5)</option>
                            <option>Inglés: DTS 5.1 (7)</option>
                            <option>Inglés: LPCM 2.0 (1)</option>
                            <option>Inglés: LPCM 5.1 (2)</option>
                            <option>Japonés: DTS-HD MA 2.0 (1)</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Seleccionar idiomas:</label><br>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="idiomas[]" value="Español"> Español
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="idiomas[]" value="Inglés"> Inglés
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="idiomas[]" value="Japonés"> Japonés
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="idiomas[]" value="Portugués"> Portugués
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="idiomas[]" value="Francés"> Francés
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="idiomas[]" value="Italiano"> Italiano
                        </label>
                    </div>
                    <div class="form-group">
                        <label>Seleccionar subtitulos:</label><br>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="subtitulos[]" value="Español"> Español
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="subtitulos[]" value="Inglés"> Inglés
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="subtitulos[]" value="Japonés"> Japonés
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="subtitulos[]" value="Portugués"> Portugués
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="subtitulos[]" value="Francés"> Francés
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="subtitulos[]" value="Italiano"> Italiano
                        </label>
                    </div>
                </div>
                <div class="col-md-6">
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
                        <label for="portada1">Portada #3:</label>
                        <input type="file" id="portada3" name="imagen_3" data-vistaPrevia="#previaPortada3" class="subirArchivo">
                        <p class="help-block">JPG|GIF|PNG 400 ancho 600 alto pixeles</p>
                        <img id="previaPortada3" src="#" alt="Portada 3" class="img-responsive" style="display:none">
                    </div>
                    <div class="form-group">
                        <label for="portada2">Portada #4:</label>
                        <input type="file" id="portada4" name="imagen_4" data-vistaPrevia="#previaPortada4" class="subirArchivo">
                        <p class="help-block">JPG|GIF|PNG 400 ancho 600 alto pixeles</p>
                        <img id="previaPortada4" src="#" alt="Portada 4" class="img-responsive" style="display:none">
                    </div>
                    <div class="form-group">
                        <label for="portada2">Portada #5:</label>
                        <input type="file" id="portada5" name="imagen_5" data-vistaPrevia="#previaPortada5" class="subirArchivo">
                        <p class="help-block">JPG|GIF|PNG 400 ancho 600 alto pixeles</p>
                        <img id="previaPortada5" src="#" alt="Portada 5" class="img-responsive" style="display:none">
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