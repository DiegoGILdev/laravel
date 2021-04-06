<?php

namespace App\Http\Controllers;

use App\Services\BillCrudService;


class BillController extends Controller implements CrudControllerInterface
{
    use CrudController;

    public function __construct(BillCrudService $billService)
    {
        $this->service = $billService;
    }
}
