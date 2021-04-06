<?php

namespace App\Services;

use App\Repositories\ProductRepository;


class ProductCrudService implements CrudServiceInterface
{
    use CrudService;

    /**
     * @param ProductRepository $productRepository
     */
    public function __construct(ProductRepository $productRepository)
    {
        $this->repository = $productRepository;
    }
}
