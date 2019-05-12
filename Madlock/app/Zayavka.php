<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Zayavka extends Model
{
    protected $fillable=[
	'name',
	'body',
	'user_id',
	'email',
	'phone',
	'comment',
	];
}
