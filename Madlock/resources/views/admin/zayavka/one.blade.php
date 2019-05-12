@extends('admin.layouts.master')

@section('content')

    <div class="portlet box green">
        <div class="portlet-title">
            <div class="caption">{{ trans('quickadmin::templates.templates-customView_index-list') }}</div>
        </div>
        <div class="portlet-body">
            <table width="100%" class="table table-bordered table-striped">
			<tr>
				<th>Имя</th>
				<th>email</th>
				<th>Телефон</th>
				<th>Услуга</th>
				
			</tr>
		
			<tr>
				<td> {{$obj->name}}</td>
				<td> {{$obj->email}}</td>
				<td> {{$obj->phone}}</td>
				<td><span> {{count(unserialize($obj->body))}}</span></td>
				
			</tr>
			
			</table>
			@php 
			$arr= unserialize($obj->body);
			@endphp
			@foreach ($arr as $key=>$value)
			товар:{{$key}},
			количество:{{$value}}<hr/>
			@endforeach
			
			
			
        </div>
	</div>

@endsection