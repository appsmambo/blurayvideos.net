@extends('layouts.app')
@section('content')
<div class="row">
    <div class="col-xs-12">
        <h1 class="page-header">
            Todas las películas
            <a class="btn btn-success btn-sm pull-right" href="{{ url('nueva-pelicula') }}">Nueva</a>
        </h1>
    </div>
</div>
<div class="row">
    <div class="col-xs-12">
        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
            <thead>
                <tr>
                    <th>Título</th>
                    <th>Precio</th>
                    <th>Stock</th>
                    <th>&nbsp;</th>
                </tr>
            </thead>
            <tbody>
@forelse ($peliculas as $pelicula)
    <tr class="{{ $loop->index % 2 ? 'odd' : 'even' }}">
        <td><a href="{{ url('/editar-pelicula/'.$pelicula->id) }}">{{ $pelicula->titulo }}</a></td>
        <td>{{ $pelicula->precio }}</td>
        <td>{{ $pelicula->stock }}</td>
        <td>
            <a class="btn btn-danger btn-sm pull-right" href="{{ url('/borrar-pelicula/'.$pelicula->id) }}">Borrar</a> &nbsp; 
            <a class="btn btn-primary btn-sm pull-right" href="{{ url('/editar-pelicula/'.$pelicula->id) }}">Editar</a>
        </td>
    </tr>
@empty
    <tr><td colspan="4">No se encontraron registros.</td></tr>
@endforelse
            </tbody>
        </table>
    </div>
</div>
@endsection
@section('scripts')
<script src="{{ url('dist/js/peliculas.js') }}" defer></script>
@endsection