<?php

use App\Products;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Products::create([ 'name' => 'Leche', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Huevos', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Manzana Verde', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Pepino Cohombro', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Piment\u00f3n Rojo', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Kiwi', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Cebolla Cabezona Blanca Limpia', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Habichuela', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Mango Tommy Maduro', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Tomate Chonto Pint\u00f3n', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Zanahoria Grande', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Aguacate Maduro', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Kale o Col Rizada', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Cebolla Cabezona Roja Limpia', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Tomate Chonto Maduro', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Acelga', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Espinaca Bogotana x 500grs', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Ahuyama', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Cebolla Cabezona Blanca Sin Pelar', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Mel\u00f3n', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Cebolla Cabezona Roja Sin Pelar', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Cebolla Larga Junca x 500grs', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Hierbabuena x 500grs', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Lechuga Crespa Verde', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Lim\u00f3n Tahit\u00ed', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Mora de Castilla', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Piment\u00f3n Verde', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Tomate Larga Vida Maduro', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Cilantro x 500grs', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Fresa Jugo', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Papa R-12 Mediana', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Curuba', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Br\u00f3coli', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Aguacate Hass Pint\u00f3n', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Aguacate Hass Maduro', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Aguacate Pint\u00f3n', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Pan Bimbo', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Producto 38', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Lechuga Crespa Morada', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Producto 40', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Banano', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Producto 42', 'quantity' => 10000 ]);
        Products::create([ 'name' => 'Banano', 'quantity' => 10000 ]);
    }
}
