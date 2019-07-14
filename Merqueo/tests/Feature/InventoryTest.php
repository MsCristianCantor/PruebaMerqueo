<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Support\Facades\DB;

class InventoryTest extends TestCase
{
    /** @test */
    function it_shows_the_inventory_list()
    {
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
            ['inventory.date', '2019-03-01'],
            ['orders.deliveryDate', '2019-03-01']
        ])
        ->groupBy('products.id','products.name','quantity_inventory')
        ->first();

        if(!empty($inventory_avaible_temp)){
            $this->get('/api/inventory/2019-03-01')
            ->assertStatus(200)
            ->assertSee((string)$inventory_avaible_temp->name);
        }else{
            $this->get('/api/inventory/1991-03-01')
            ->assertStatus(200)
            ->assertSee('No se encontraron registros');
        }
    }
}
