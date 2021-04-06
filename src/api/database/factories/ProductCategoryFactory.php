<?php

namespace Database\Factories;

use App\Models\ProductCategory;
use Bezhanov\Faker\Provider\Commerce;
use Faker\Factory as FakerFactory;
use Illuminate\Database\Eloquent\Factories\Factory;


class ProductCategoryFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = ProductCategory::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $faker = FakerFactory::create();
//        $faker->addProvider(new Commerce($faker));

        return [
//            'name' => $faker->category(),
            'name' => $faker->lexify(),
        ];
    }
}
