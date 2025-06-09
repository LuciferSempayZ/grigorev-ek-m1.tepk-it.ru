@extends('layouts.layout')

@section('title', 'Продукция с использованием материала')

@section('content')

    <div class="container mt-4">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h2>Продукция с использованием "{{ $material->name }}"</h2>
            <a href="{{ route('materials.index') }}" class="btn btn-secondary">Назад к списку материалов</a>
        </div>

        @if ($products->isEmpty())
            <p class="alert alert-warning">Этот материал нигде не используется.</p>
        @else
            <table class="table table-bordered table-striped">
                <thead class="table-dark">
                <tr>
                    <th>Наименование продукции</th>
                    <th>Необходимое количество материала</th>
                </tr>
                </thead>
                <tbody>
                @foreach ($products as $mp)
                    <tr>
                        <td>{{ $mp->product->name }}</td>
                        <td>{{ $mp->quantity }} {{ $material->unit->name }}</td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        @endif
    </div>

@endsection
