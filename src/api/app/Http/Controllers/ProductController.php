<?php

namespace App\Http\Controllers;

use App\Services\ProductCrudService;


class ProductController extends Controller
{
    use CrudController;

    /**
     * @param ProductCrudService $service
     */
    public function __construct(ProductCrudService $service)
    {
        $this->service = $service;
    }
}
