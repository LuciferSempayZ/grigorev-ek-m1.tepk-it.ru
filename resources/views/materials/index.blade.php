@extends('layouts.layout')

@section('title', 'Просмотр материалов')

@section('content')

    <div class="create-butt">
        <a class="btn" href="{{route('materials.create')}}">Добавить материал</a>
    </div>
    @if(session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif
    <div class="cards">
        @foreach($materials as $material)
            <div class="inf">
                <div class="d-flex justify-content-between ">
                    <div>
                        <div class="font">{{$material->materialType->name}} | {{$material->name}}</div>
                        <div class="font-little">Минимальное количество: {{$material->quantityM}}</div>
                        <div class="font-little">Количество на складе: {{$material->quantity}}</div>
                        <div class="font-little">Цена: {{$material->price}} {{$material->unit->name}} | {{$material->quantityP}}</div>
                    </div>
                    <div class="font">
                        {{$sumMaterialProducts[$material->id]}}
                    </div>
                </div>
                <a  class="btn" href="{{ route('materials.edit', $material->id) }}">Редактировать</a>
                <a  class="btn" href="{{ route('materials.show', $material->id) }}">Просмотр</a>
            </div>
        @endforeach
    </div>
@endsection
