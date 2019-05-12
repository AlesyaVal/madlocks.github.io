
<h2>
{{$obj->name}}
</h2>

<div>{!!$obj->name!!}</div> 
<div>
  @If ($obj->picture)
          <img class='product' src="{{asset('public/uploads/thumb/'. $obj->picture)}}" id="{{$obj->id}}"/>
        @else
          <img class='product' src="{{asset('madia/img/nophoto.jpg')}}"  id="{{$obj->id}}"/>
        @endif
</div>