<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Products;
use Illuminate\Support\Facades\DB;

class ProductsController extends Controller
{
    public function getAll(){
        $products = Products::all();
        return $products;
    }

    public function getAvailable(){

        $products = DB::table('products')
        ->select('products.id', 'products.name', 'inventory.date', 'inventory.quantity')
        //->where('inventory.date', $date)
        ->join('inventory',  'Products.id','=','inventory.product_id')
        ->get();

        //dd($products);
        return $products;
    }

    public function getLessSold($date = null, $quantity = null){
        /*$products = DB::table('products')
        ->select('products.id', 'products.name', 'order_product.quantity')
        ->join('order_product',  'products.id','=','order_product.product_id')
        ->join('orders',  'orders.id','=','order_product.order_id')
        ->where('orders.deliveryDate', $date)
        ->get();*/

        $products = $this->getAll();

        foreach($products as $key => $product){
            $quantity = DB::table('order_product')
            ->where('order_product.product_id', $product['id'])
            ->sum('order_product.quantity');
            $products[$key]['quantity'] = $quantity;
        }



        return $products;
    }
}
