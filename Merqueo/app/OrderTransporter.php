<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderTransporter extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'order_transporter';
    protected $fillable = array('order_id','transporter_id');
}
