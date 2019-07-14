<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Inventory extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'inventory';
    protected $fillable = array('product_id','quantity', 'date');
}
