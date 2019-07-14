<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Support\Facades\DB;
use App\Products;
use App\Orders;

class ProductsTest extends TestCase
{

    /** @test */
    function it_shows_the_all_products_list()
    {
        $products = Products::first();

        $this->get('/api/products')
        ->assertStatus(200)
        ->assertSee((string)$products->id)
        ->assertSee((string)$products->name)
        ->assertSee((string)$products->quantity);
    }

    /** @test */
    function it_shows_the_products_list(){
        $order = DB::table('transporters')
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
        ->first();

        if(!empty($order)){
            $this->get('/api/productsEnlist')
            ->assertStatus(200)
            ->assertSee('Configured')
            ->assertSee((string)$order->idOrder)
            ->assertSee((string)$order->address)
            ->assertSee((string)$order->nameUser)
            ->assertSee((string)$order->deliveryDate)
            ->assertSee((string)$order->nameTransporter);
            
        }else{
            $this->get('/api/productsEnlist')
            ->assertStatus(200)
            ->assertSee('No se encontraron registros');
        }

    }

    /** @test */
    function it_shows_the_products_avaible()
    {
        $this->get('/api/productsAvailable')
        ->assertStatus(200)
        ->assertSee('id')
        ->assertSee('name')
        ->assertSee('date')
        ->assertSee('quantity');
    }

    /** @test */
    function it_shows_the_products_less_sold()
    {
        $products = DB::table('products')
        ->select('products.id', 'products.name', DB::raw('SUM(order_product.quantity) as total_sales'))
        ->where('orders.deliveryDate', '2019-03-01')
        ->join('order_product',  'products.id','=','order_product.product_id')
        ->join('orders',  'orders.id','=','order_product.order_id')
        ->groupBy('products.id','products.name')
        ->orderBy('total_sales', 'ASC')
        ->first();

        if(!empty($products)){
            $this->get('/api/productsLessSold/2019-03-01/10')
            ->assertStatus(200)
            ->assertSee((string)$products->id)
            ->assertSee((string)$products->total_sales);
        }else{
            $this->get('/api/productsLessSold/2019-03-01/5')
            ->assertStatus(200)
            ->assertSee('No se encontraron registros');
        }
    }

    /** @test */
    function it_shows_the_products_more_sold()
    {
        $products = DB::table('products')
        ->select('products.id', 'products.name', DB::raw('SUM(order_product.quantity) as total_sales'))
        ->where('orders.deliveryDate', '2019-03-01')
        ->join('order_product',  'products.id','=','order_product.product_id')
        ->join('orders',  'orders.id','=','order_product.order_id')
        ->groupBy('products.id','products.name')
        ->orderBy('total_sales', 'DESC')
        ->first();

        if(!empty($products)){
            $this->get('/api/productsMoreSold/2019-03-01/5')
            ->assertStatus(200)
            ->assertSee((string)$products->id)
            ->assertSee((string)$products->name)
            ->assertSee((string)$products->total_sales);
        }else{
            $this->get('/api/productsMoreSold/2019-03-01/5')
            ->assertStatus(200)
            ->assertSee('No se encontraron registros');
        }
    }
}
