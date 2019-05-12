   	@extends('layouts.base')
   	@section('scripts')
   	  @parent
  <script src= "{{asset('public/media/js/modal.js')}}"></script>
  @endsection
	@section('content')
			<h2>Мы можем вам предложить!</h2>
   			<div class="maintext">
			@foreach ($cats as $cat)
				<h2>{{$cat->name}}</h2>
			<div>	
			  {!!$cat->body!!}
			</div>
				@foreach ($cat->products()->get() as $one)
				</hr>
				@If ($one->picture)
					<img class='product' src="{{asset('public/uploads/thumb/'. $one->picture)}}" id="{{$one->id}}"/>
				@else
					<img class='product' src="{{asset('madia/img/nophoto.jpg')}}"  id="{{$one->id}}"/>
				@endif
			<h3>
	<a href="{{asset('product/'.$one->id)}}"	class='product_link'>
	{{$one->name}}
	</a>
	</h3>
	{!!$one->body!!}
				@endforeach
			@endforeach
			</div>
   			
@endsection