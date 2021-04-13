<?php

namespace App\Http\Controllers;

use App\Services\BillCrudService;


class BillController extends CrudController implements CrudControllerInterface
{
    public function __construct(BillCrudService $billService)
    {
        $this->service = $billService;
    }
}
