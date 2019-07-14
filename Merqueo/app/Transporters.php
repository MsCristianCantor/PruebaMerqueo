<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transporters extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'transporters';
    protected $fillable = array('name');
}
