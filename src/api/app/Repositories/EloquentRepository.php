<?php

namespace App\Repositories;


class EloquentRepository implements RepositoryInterface
{
    use CrudEloquentRepository;

    public function getModelName(): string
    {
        $classPaths = explode('\\', get_class($this->model));

        return array_pop($classPaths);
    }
}
