<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductProvider extends Model
{
    protected $table = 'product_provider';
    protected $fillable = array('product_id','provider_id');
}
