<?php

namespace App\Repositories;

use App\Helpers\Paginator;
use App\Models\Product;
use Illuminate\Database\Eloquent\Collection;


abstract class DoctrineRepository implements RepositoryInterface
{
    /**
     * @param Paginator $paginator
     * @return Collection
     */
    public function getAll(Paginator $paginator): Collection
    {
        return Product::query()->get();
    }

    /**
     * @param int $productId
     * @return Product|null
     */
    public function get(int $productId): ?Product
    {
        return tap(
            Product::query()->where('id', $productId)->first(),
            function (?Product $product) {
                return $product;
            }
        );
    }
}
