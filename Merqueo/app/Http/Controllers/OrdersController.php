<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Products;
use App\Orders;

class OrdersController extends Controller
{
    public function add(Request $request){

        $con = 0;

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
            $con ++;
        }
        
        if($con > 2)
        {
            $res[] = 'Se crearon los registros de forma correcta.';
        }
        else
        {
            $res[] = 'Se creo el registro de forma correcta.';
        }

        return $res;
    }

    public function get($id){

        $order_res_tem = Orders::find($id);

        if(!empty($order_res_tem)){
            $order_res['Order']['id'] = $order_res_tem->id;
            $order_res['Order']['user'] = $order_res_tem->user;
            $order_res['Order']['priority'] = $order_res_tem->priority;
            $order_res['Order']['address'] = $order_res_tem->address;
            $order_res['Order']['deliveryDate'] = $order_res_tem->deliveryDate;

            /*$product_avaible_temp = DB::table('orders')
            ->select(
                'products.id',
                'products.name',
                'order_product.quantity as quantity_order',
                'inventory.quantity as quantity_inventory'
            )
            ->join('order_product', 'orders.id', '=', 'order_product.order_id')
            ->join('products', 'products.id', '=', 'order_product.product_id')
            ->join('inventory', 'products.id', '=', 'inventory.product_id')
            ->where([
                ['order_product.order_id', '=', $order_res_tem->id],
                ['order_product.quantity', '<', 'inventory.quantity']
            ])
            ->get()
            ->toArray();*/

            $product_avaible_temp = DB::select("SELECT
            `products`.`id`,
            `products`.`name`,
            `order_product`.`quantity` AS `quantity_order`,
            `inventory`.`quantity` AS `quantity_inventory`
            FROM
                `orders`
            INNER JOIN `order_product` ON `orders`.`id` = `order_product`.`order_id`
            INNER JOIN `products` ON `products`.`id` = `order_product`.`product_id`
            INNER JOIN `inventory` ON `products`.`id` = `inventory`.`product_id`
            WHERE
            (
                `order_product`.`order_id` = {$order_res_tem->id} AND `order_product`.`quantity` <= inventory.quantity
            )");
            
            $order_res['Order']['products_avaible'] = $product_avaible_temp;

            $product_not_avaible_temp = DB::select("SELECT
            `products`.`id`,
            `products`.`name`,
            `order_product`.`quantity` AS `quantity_order`,
            `inventory`.`quantity` AS `quantity_inventory`
            FROM
                `orders`
            INNER JOIN `order_product` ON `orders`.`id` = `order_product`.`order_id`
            INNER JOIN `products` ON `products`.`id` = `order_product`.`product_id`
            INNER JOIN `inventory` ON `products`.`id` = `inventory`.`product_id`
            WHERE
            (
                `order_product`.`order_id` = {$order_res_tem->id} AND `order_product`.`quantity` >= inventory.quantity
            )");

            $order_res['Order']['products_not_avaible'] = $product_not_avaible_temp;

            foreach ($order_res['Order']['products_not_avaible'] as $key => $product_not_avaible) {
                $order_res['Providers'][] = DB::table('products')
                ->select(
                    'products.id as product_id',
                    'products.name as product_name',
                    'providers.id as provider_id',
                    'providers.name as provider_name',
                )
                ->join('product_provider', 'product_provider.product_id', '=', 'products.id')
                ->join('providers', 'providers.id', '=', 'product_provider.provider_id')
                ->where('products.id', '=', $product_not_avaible->id)
                ->get()
                ->toArray();
            }
        }else{
            $order_res[] = 'No se encontraron registros';
        }
        return $order_res;
    }
}
