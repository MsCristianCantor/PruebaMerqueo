<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'products';
    protected $fillable = array('name','quantity');
}
