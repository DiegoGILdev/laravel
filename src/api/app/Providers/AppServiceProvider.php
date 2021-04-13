<?php

namespace App\Providers;

use App\Helpers\FilterHelper;
use App\Repositories\EloquentRepository;
use App\Repositories\RepositoryInterface;
use App\Services\ProductCrudService;
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
        RepositoryInterface::class => EloquentRepository::class,
        CrudServiceInterface::class => ProductCrudService::class,
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
