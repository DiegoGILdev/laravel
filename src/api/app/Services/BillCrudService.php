<?php

namespace App\Services;

use App\Repositories\BillRepository;


class BillCrudService extends CrudService
{
    public function __construct(BillRepository $billRepository)
    {
        $this->repository = $billRepository;
    }
}
