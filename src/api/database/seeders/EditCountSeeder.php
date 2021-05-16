<?php

namespace Database\Seeders;

use App\Repositories\EditCountRepository;
use Illuminate\Contracts\Container\BindingResolutionException;
use Illuminate\Database\Seeder;


class EditCountSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     * @throws BindingResolutionException
     */
    public function run()
    {
        $editCountRepository = app()->make(EditCountRepository::class);

        $editCountRepository
            ->store('UserA', 'Apples')
            ->store('UserA', 'Bananas')
            ->store('UserA', 'Durian')
            ->store('UserB', 'Bananas')
            ->store('UserB', 'Carrots')
            ->store('UserB', 'Durian')
            ->store('UserC', 'Apples')
            ->store('UserC', 'Bananas')
            ->store('UserC', 'Carrots')
            ->store('UserC', 'Durian')
            ->store('UserD', 'Durian')
            ->store('UserE', 'Apples')
            ->store('UserE', 'Bananas')
            ->store('UserE', 'Carrots')
            ->store('UserE', 'Durian')
            ->store('UserF', 'Apples')
            ->store('UserF', 'Bananas')
            ->store('UserF', 'Carrots')
            ->store('UserF', 'Durian')
            ->store('UserG', 'Apples')
            ->store('UserH', 'Bananas')
            ->store('UserH', 'Carrots')
            ->store('UserH', 'Durian');
    }
}
