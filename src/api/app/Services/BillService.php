<?php

namespace App\Services;

use App\Repositories\BillRepository;


class BillService extends CrudService
{
    public function __construct(BillRepository $billRepository)
    {
        $this->repository = $billRepository;
    }
}
