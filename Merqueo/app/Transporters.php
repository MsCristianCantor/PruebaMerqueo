<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transporters extends Model
{
    protected $table = 'providers';
    protected $fillable = array('order_id','name');
}
