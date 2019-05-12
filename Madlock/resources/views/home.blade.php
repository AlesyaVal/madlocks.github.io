@extends('layouts.base')
@section('scripts')
   @parent
   <script src= "{{asset('public/media/ckeditor/ckeditor.js')}}"></script>
 @endsection
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Oставьте отзыв</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

<form method="post" action="{{asset('home')}}" class="form-inline">
	{!!csrf_field()!!}
 
  <div class="form-group">
    <textarea placeholder="Сообщение" name="body" rows="10" cols="45" class='ckeditor'></textarea>
   </div>
  <button type="submit" class="btn btn-default">отправить</button>
</form>
                   
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
