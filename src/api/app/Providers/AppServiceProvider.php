<?php

namespace App\Providers;

use App\Helpers\FilterHelper;
use App\Repositories\EloquentRepository;
use App\Repositories\CrudRepositoryInterface;
use App\Services\ProductService;
use App\Services\CrudServiceInterface;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * All of the container singletons that should be registered.
     *
     * @var array
     */
    public $singletons = [
        CrudRepositoryInterface::class => EloquentRepository::class,
        CrudServiceInterface::class => ProductService::class,
    ];

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
    }
}
