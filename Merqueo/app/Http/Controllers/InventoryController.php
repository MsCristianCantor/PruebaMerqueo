<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Inventory;
use Illuminate\Support\Facades\DB;

class InventoryController extends Controller
{
    public function add(Request $request){

        $con = 0;

        foreach($request['inventory'] as $inv){
            Inventory::updateOrCreate($inv);
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

    public function get($date){
        $inventory_avaible_temp = DB::table('orders')
        ->select(
            'products.id',
            'products.name',
            DB::raw('SUM(order_product.quantity) as quantity_orders'),
            'inventory.quantity as quantity_inventory'
        )
        ->join('order_product', 'orders.id', '=', 'order_product.order_id')
        ->join('products', 'products.id', '=', 'order_product.product_id')
        ->join('inventory', 'products.id', '=', 'inventory.product_id')
        ->where([
            ['inventory.date', $date],
            ['orders.deliveryDate', $date]
        ])
        ->groupBy('products.id','products.name','quantity_inventory')
        ->get()
        ->toArray();

        foreach ($inventory_avaible_temp as $key => $inventory) {
            if($inventory->quantity_inventory >= $inventory->quantity_orders){
                $inventory_avaible['Inventory']['avaible'][] = [
                    'id' => $inventory->id,
                    'name' => $inventory->name,
                    'quantity_orders' => $inventory->quantity_orders,
                    'quantity_inventory' => $inventory->quantity_inventory,
                    'quantity_next_day' => $inventory->quantity_inventory - $inventory->quantity_orders
                ];
            }else{
                $inventory_avaible['Inventory']['reload'][] = [
                    'id' => $inventory->id,
                    'name' => $inventory->name,
                    'quantity_orders' => $inventory->quantity_orders,
                    'quantity_inventory' => $inventory->quantity_inventory,
                    'quantity_reload' => abs($inventory->quantity_inventory - $inventory->quantity_orders)
                ];
            }
        }


        if(empty($inventory_avaible)){
            $inventory_avaible[] = 'No se encontraron registros';
        }

        return $inventory_avaible;
    }
}
