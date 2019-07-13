<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Products;

class OrdersController extends Controller
{
    public function add(Request $request){
        foreach($request['orders'] as $order){

            $datetime = date("Y-m-d H:i:s");

            $id = DB::table('orders')->insertGetId([
                'priority' => $order['priority'],
                'address' => $order['address'],
                'user' => $order['user'],
                'state' => 'Creado',
                'deliveryDate' => $order['deliveryDate'],
                'created_at' => $datetime, 
                'updated_at' => $datetime
            ]);

            foreach($order['products'] as $order_product){
                $product = Products::find($order_product['id']);

                if(!empty($product)){
                    DB::table('order_product')->insert([
                        'order_id' => $id, 
                        'product_id' => $order_product['id'],
                        'quantity' => $order_product['quantity'],
                        'created_at' => $datetime, 
                        'updated_at' => $datetime
                    ]);
                }
            }
        }
        return $request;
    }
}
