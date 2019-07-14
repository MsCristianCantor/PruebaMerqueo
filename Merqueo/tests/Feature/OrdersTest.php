<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;
use App\Orders;
use Illuminate\Support\Facades\DB;

class OrdersTest extends TestCase
{
    /** @test */
    function it_shows_a_orders_by_id()
    {
        $order_res_tem = Orders::first();
        
        if(!empty($order_res_tem)){
            $this->get("/api/orders/$order_res_tem->id")
            ->assertStatus(200)
            ->assertSee((string)$order_res_tem->address)
            ->assertSee((string)$order_res_tem->user)
            ->assertSee((string)$order_res_tem->deliveryDate);
        }else{
            $this->get('/api/orders/999999999999999999')
            ->assertStatus(200)
            ->assertSee('No se encontraron registros');
        }
    }
}
