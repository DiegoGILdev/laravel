<?php

namespace App\Services;

use App\Repositories\ProductRepository;


class ProductService extends CrudService
{
    /**
     * @param ProductRepository $productRepository
     */
    public function __construct(ProductRepository $productRepository)
    {
        $this->repository = $productRepository;
    }
}
