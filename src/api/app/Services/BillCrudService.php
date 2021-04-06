<?php

namespace App\Services;

use App\Repositories\BillRepository;


class BillCrudService implements CrudServiceInterface
{
    use CrudService;

    public function __construct(BillRepository $billRepository)
    {
        $this->repository = $billRepository;
    }
}
