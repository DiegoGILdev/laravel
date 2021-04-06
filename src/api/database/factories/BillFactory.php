<?php

namespace Database\Factories;

use App\Models\Bill;
use Illuminate\Database\Eloquent\Factories\Factory;
use Faker\Factory as FakerFactory;


class BillFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Bill::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $faker = FakerFactory::create();

        return [
            'value' => $faker->randomFloat(2, 1, 10000),
            'payed' => $faker->boolean,
            'recorded' => $faker->boolean,
            'order_id' => $faker->numerify(),
        ];
    }
}
