<?php

namespace App\Services;

use App\Helpers\Paginator;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;


interface CrudServiceInterface
{
    public function getAll(Paginator $paginator): Collection;

    public function get(int $modelId): Model;

    public function save(array $data): Model;

    public function update(int $modelId, array $data): Model;

    public function delete(int $modelId): bool;
}
