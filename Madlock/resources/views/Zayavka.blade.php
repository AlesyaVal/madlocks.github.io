   	@extends('layouts.base')
	@section('scripts')
   @parent
   <script src= "{{asset('public/media/ckeditor/ckeditor.js')}}"></script>
 @endsection
	@section('content')
			<h2>Ваша заявка</h2>
   			<div class="maintext">
		@if(count($errors)>0)
			<div class="alert alert-danger">
				<strong>Whoops!</strong> Найдены следующие ошибки.<br><br>
					<ul>
					@foreach ($errors->all() as $error)
						<li>
						{{$error}}
						</li>
					@endforeach
					</ul>
			</div>
		@endif
		<form method="post" action="{{asset('order')}}" class="form-inline">
			{!!csrf_field()!!}
							<input type="hidden" name="bodys" value="{{serialize($_GET)}}">
<main class="col"> 
 <div class="form-group">
    <label for="exampleInputName2"> Ваше имя </label>
	@if($errors->has('name'))
					<span class="help-block">
				<strong>{{$errors->first('name')}}</strong>
					</span>
	@endif
				
    <input type="text" name="name" value="{{old('name')}}" class="form-control" id="exampleInputName2" placeholder="Введите имя">
  </div><br/>
  <div class="form-group">
    <label for="exampleInputEmail2"> Ваш Email </label>
	@if($errors->has('Email'))
					<span class="help-block">
				<strong>{{$errors->first('email')}}</strong>
					</span>
	@endif
    <input type="email" name="email" value="{{old('email')}}" class="form-control" id="exampleInputEmail2" placeholder="Введите email">
  </div><br/>
    <div class="form-group">
    <label for="exampleInputPhone2"> Ваш номер телефона </label>
	@if($errors->has('phone'))
					<span class="help-block">
				<strong>{{$errors->first('phone')}}</strong>
					</span>
	@endif
    <input type="text" name="phone" value="{{old('phone')}}" class="form-control" id="exampleInputEmail2" placeholder="Введите номер телефона">
  </div>
 </main>
 
 
   <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif


 
			<div class="form-group">
				<textarea placeholder="Сообщение" name="comment" rows="10" cols="45" class='ckeditor'></textarea>
			</div>
				<button type="submit" class="btn btn-secondary"  href="{{asset('order')}}">Отправить заявку</button>
  
		
                   
    </div>
  

</form>
		<table>	
			<tr>
			<td><a href="{{asset('basket')}}"class="btn btn-secondary btn-block">Вернуться к понравившимся</a></td>
			</tr>		
		</table>
			
			</div>
   			
@endsection