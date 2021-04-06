<?php

namespace App\Repositories;

use App\Helpers\Paginator;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;


interface RepositoryInterface
{
    public function getModelName(): string;

    public function getAll(Paginator $paginator): Collection;

    public function get(int $productId): ?Model;

    public function save(array $data): Model;

    public function update(int $productId, array $data): ?Model;

    public function delete(int $productId): ?bool;
}
