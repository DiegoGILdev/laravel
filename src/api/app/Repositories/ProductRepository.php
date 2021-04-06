<?php

namespace App\Repositories;

use App\Models\Product;


class ProductRepository extends EloquentRepository
{
    /**
     * @param Product $product
     */
    public function __construct(Product $product)
    {
        $this->model = $product;
    }
}
