<?php

namespace App\Repositories;

use App\Helpers\Paginator;
use App\Models\Model as ModelBase;
use App\Models\Product;
use Exception;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;


class EloquentCrudRepository implements CrudRepositoryInterface
{
    protected Model $model;

    /**
     * @param Paginator $paginator
     * @return Collection
     */
    public function getAll(Paginator $paginator): Collection
    {
        return $this->model::query()
            ->limit($paginator->limit)
            ->orderBy($paginator->sorting->column, $paginator->sorting->direction)
            ->get();
    }

    /**
     * @param int $productId
     * @return Product|null
     */
    public function get(int $productId): ?Model
    {
        return $this->model::query()->where(ModelBase::ID, $productId)->first();
    }

    public function save(array $data): Model
    {
        $this->model->fill($data);
        $this->model->save();

        return $this->model;
    }

    public function update(int $productId, array $data): ?Model
    {
        $firstModel = $this->model::query()->where(ModelBase::ID, $productId)->first();

        if (is_null($firstModel)) {
            return null;
        }

        $firstModel->update($data);

        return $firstModel;
    }

    /**
     * @param int $productId
     * @return bool|null
     * @throws Exception
     */
    public function delete(int $productId): ?bool
    {
        $firstModel = $this->model::query()->where(ModelBase::ID, $productId)->first();

        if (is_null($firstModel)) {
            return null;
        }

        return $firstModel->delete();
    }
}
