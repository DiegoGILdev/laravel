<?php

namespace App\Http\Controllers;

use App\Http\Requests\Product\StoreRequest;
use App\Http\Responses\JSendSuccessResponse;
use App\Services\ProductService;


class ProductController extends CrudController
{
    /**
     * @param ProductService $service
     */
    public function __construct(ProductService $service)
    {
        $this->service = $service;
    }

    public function store(): JSendSuccessResponse
    {
        $this->request = app(StoreRequest::class);

        return CrudController::store();
    }
}
