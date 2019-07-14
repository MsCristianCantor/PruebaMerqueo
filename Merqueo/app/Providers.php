<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Providers extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'providers';
    protected $fillable = array('name');
}
