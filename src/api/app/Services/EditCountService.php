<?php

namespace App\Services;

use App\Repositories\EditCountRepository;
use Illuminate\Database\Eloquent\Collection;


class EditCountService extends CrudService
{
    public function __construct(EditCountRepository $editCountRepository)
    {
        $this->repository = $editCountRepository;
    }

    public function list(string $username, string $title, int $pageSize): Collection
    {
        return $this->repository->list($username, $title, $pageSize);
    }
}
