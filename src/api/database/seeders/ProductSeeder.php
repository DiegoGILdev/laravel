<?php

namespace Database\Seeders;

use App\Models\Product;
use App\Models\ProductCategory;
use Exception;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use PDO;


class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        ProductCategory::factory(10)
        ->create()
        ->each(function (ProductCategory $category) {
            $products = Product::factory()->count(10)->make([
                'product_categories_id' => $category->id,
            ]);
            $category->products()->saveMany($products);
        });
    }
}
