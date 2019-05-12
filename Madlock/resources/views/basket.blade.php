@extends('layouts.base')
	@section('scripts')
   @parent
  <script src= "{{asset('public/media/ckeditor/ckeditor.js')}}"></script>
  <script src= "{{asset('public/js/zayavka.js?time='.time())}}"></script>
 @endsection
	@section('content')
	<h2>Мне нравится</h2>
   		<div class="maintext">
		
		
		
		<form method="get" action="{{asset('zayavka')}}">
		@csrf
		<table class="table table-borderd table-striped" width=100%>
			<tr>
				<th>Изображение</th>
				<th>Название</th>
				<th>Цена</th>
				<th>количество</th>
				<th>Сумма</th>
				<th>действия</th>
				
			</tr>
				<tr>
					<th>Итого</th>
				</tr>
@php
$counts=0;
$itog=0;
@endphp
			@foreach ($arr as $key=>$value)
				@php
				$count=$value*$products[$key]->price;
				$counts+=$value;
				$itog+=$count;
				@endphp
				<tr>		
				<td>@If ($products[$key]->picture)
					<img src="{{asset('public/uploads/thumb/'. $products[$key]->picture)}}"/>
				@else
					<img class='pruduct' src="{{asset('madia/img/nophoto.jpg')}}"/>
				@endif</td>
				<td>{{$products[$key]->name}}</td>
				
				<td> 

				<span id="price_{{$key}}">{{$products[$key]->price}}</span> </td>
				
				<td><input type="number" name="{{$key}}" data-id="{{$key}}" min="0" max="20" value="{{$value}}" class="count" /></td>
				<td><span id="count_{{$key}}">{{$count}}</span></td>
				<td><a href="{{asset('basket/dell/'.$key)}}" data-id="{{$key}}">Уже не нравится</a></td>
				</tr>
			@endforeach
<tr>
<th colspan="3">Итого<th>
				<td><a href="{{asset('basket/clear/')}}">Убрать все</a></td>
				<td>{{$counts}}</td>
				<td>{{$itog}}</td>
</tr>
			<tr>
			<td><button  type="submit" class="btn btn-secondary btn-block">Отправить заявку</button></td>
			</tr>	
</form>			
		</table>
		
		</div>
   			
@endsection