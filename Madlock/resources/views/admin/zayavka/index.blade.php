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
				<th>Действие</th>
			</tr>
			@foreach($all as $one)
			<tr>
				<td>{{$one->name}}</td>
				<td>{{$one->email}}</td>
				<td>{{$one->phone}}</td>
				<td><span>{{count(unserialize($one->body))}}</span></td>
				<td> <a href="{{asset('admin/zayavka/one/'.$one->id)}}"> Просмотр заявки</td>
			</tr>
			@endforeach
			</table>
			{!!$all->links()!!}
        </div>
	</div>

@endsection