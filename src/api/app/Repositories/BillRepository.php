<?php

namespace App\Repositories;

use App\Models\Bill;


class BillRepository extends EloquentRepository
{
    public function __construct(Bill $bill)
    {
        $this->model = $bill;
    }
}
