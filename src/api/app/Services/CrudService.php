<?php

namespace App\Services;

use App\Exceptions\NotFoundException;
use App\Helpers\Paginator;
use App\Repositories\CrudRepositoryInterface;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;


class CrudService implements CrudServiceInterface
{
    protected CrudRepositoryInterface $repository;

    /**
     * @param Paginator $paginator
     * @return Collection
     */
    public function getAll(Paginator $paginator): Collection
    {
        return $this->repository->getAll($paginator);
    }

    /**
     * @param int $modelId
     * @return Model
     * @throws NotFoundException
     */
    public function get(int $modelId): Model
    {
        $model = $this->repository->get($modelId);

        if (is_null($model)) {
            throw NotFoundException::factory($this->repository->getModelName(), $modelId);
        }

        return $model;
    }

    /**
     * @param array $data
     * @return Model
     */
    public function save(array $data): Model
    {
        return $this->repository->save($data);
    }

    /**
     * @param int $modelId
     * @param array $data
     * @return Model
     * @throws NotFoundException
     */
    public function update(int $modelId, array $data): Model
    {
        $product = $this->repository->update($modelId, $data);

        if (is_null($product)) {
            throw NotFoundException::factory($this->repository->getModelName(), $modelId);
        }

        return $product;
    }

    /**
     * @param int $modelId
     * @return bool
     * @throws NotFoundException
     */
    public function delete(int $modelId): bool
    {
        $result = $this->repository->delete($modelId);

        if (is_null($result)) {
            throw NotFoundException::factory($this->repository->getModelName(), $modelId);
        }

        return $result;
    }
}
