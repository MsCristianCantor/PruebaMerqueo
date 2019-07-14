<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Products;
use App\Orders;
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
        ->join('inventory',  'Products.id','=','inventory.product_id')
        ->get();

        return $products;
    }

    public function getLessSold($date = null, $quantity = null){

        $products = DB::table('products')
        ->select('products.id', 'products.name', DB::raw('SUM(order_product.quantity) as total_sales'))
        ->where('orders.deliveryDate', $date)
        ->join('order_product',  'products.id','=','order_product.product_id')
        ->join('orders',  'orders.id','=','order_product.order_id')
        ->groupBy('products.id','products.name')
        ->orderBy('total_sales', 'ASC')
        ->limit($quantity)
        ->get();

        if(empty($products)){
            $products[] = 'No se encontraron registros';
        }

        return $products;
    }

    public function getMoreSold($date = null, $quantity = null){

        $products = DB::table('products')
        ->select('products.id', 'products.name', DB::raw('SUM(order_product.quantity) as total_sales'))
        ->where('orders.deliveryDate', $date)
        ->join('order_product',  'products.id','=','order_product.product_id')
        ->join('orders',  'orders.id','=','order_product.order_id')
        ->groupBy('products.id','products.name')
        ->orderBy('total_sales', 'DESC')
        ->limit($quantity)
        ->get();

        if(!empty($products)){
            $products[] = 'No se encontraron registros';
        }

        return $products;
    }

    public function getProductsEnlist(){

        $orders = DB::table('transporters')
        ->select(
            'orders.id as idOrder', 
            'orders.priority', 
            'orders.address', 
            'orders.user as nameUser',
            'orders.deliveryDate',
            'transporters.name as nameTransporter'
        )
        ->join('order_transporter', 'transporters.id' , '=', 'order_transporter.transporter_id')
        ->join('orders', 'orders.id' , '=' , 'order_transporter.order_id')
        ->orderBy('orders.priority', 'ASC')
        ->get()
        ->toArray();

        //dd($orders);

        if(!empty($orders)){
            foreach ($orders as $order) {

                //Ordenes relacionadas a transportador
    
                $order_res_tem['idOrder'] = $order->idOrder;
                $order_res_tem['priority'] = $order->priority;
                $order_res_tem['address'] = $order->address;
                $order_res_tem['nameUser'] = $order->nameUser;
                $order_res_tem['deliveryDate'] = $order->deliveryDate;
                $order_res_tem['nameTransporter'] = $order->nameTransporter;
    
                $order_res_tem['Products'] = DB::table('order_product')
                ->select(
                    'products.id',
                    'products.name',
                    'order_product.quantity'
                )
                ->where('order_product.order_id', '=', $order->idOrder)
                ->join('products', 'products.id', '=', 'order_product.product_id')
                ->get()
                ->toArray();
                $order_res['Configured'][] = $order_res_tem;
    
                //Ordenes no relacionadas a transportador
    
                $array_temp = DB::table('orders')
                ->select(
                    'orders.id as idOrder', 
                    'priority', 
                    'address', 
                    'user as nameUser',
                    'deliveryDate'
                )
                ->where([
                    ['orders.id', '!=', $order->idOrder],
                    ['orders.address', '=', $order->address],
                    ['orders.user', '=', $order->nameUser],
                ])
                ->orderBy('orders.priority', 'ASC')
                ->get()
                ->toArray();
    
                if(!empty($array_temp)){
                    foreach ($array_temp as $order_tem) {
    
                        $order_res_tem['idOrder'] = $order_tem->idOrder;
                        $order_res_tem['priority'] = $order_tem->priority;
                        $order_res_tem['address'] = $order_tem->address;
                        $order_res_tem['nameUser'] = $order_tem->nameUser;
                        $order_res_tem['deliveryDate'] = $order_tem->deliveryDate;
                        $order_res_tem['Products'] = DB::table('order_product')
                        ->select(
                            'products.id',
                            'products.name',
                            'order_product.quantity'
                        )
                        ->where('order_product.order_id', '=', $order_tem->idOrder)
                        ->join('products', 'products.id', '=', 'order_product.product_id')
                        ->get()
                        ->toArray();
    
                        $order_res['noConfigured'][] = $order_res_tem;
                    }
                }
            }
        }else{
            $order_res[] = 'No se encontraron registros';
        }
        return $order_res;
    }
}
