<?php

namespace App\Repositories;


class EloquentRepository extends EloquentCrudRepository
{
    public function getModelName(): string
    {
        $classPaths = explode('\\', get_class($this->model));

        return array_pop($classPaths);
    }
}
