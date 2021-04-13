<?php

namespace Database\Factories;

use App\Models\Product;
use Bezhanov\Faker\Provider\Commerce;
use Illuminate\Database\Eloquent\Factories\Factory;
use Faker\Factory as FakerFactory;


class ProductFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $faker = FakerFactory::create();

        return [
            'name' => $faker->lexify(),
            'description' => $faker->lexify(),
            'price' => $faker->randomFloat(2, 0, 10000),
        ];
    }
}
