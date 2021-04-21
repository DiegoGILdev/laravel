<?php

namespace App\Http\Controllers;

use App\Http\Requests\Event\EventRequest;
use App\Http\Responses\JSendSuccessResponse;
use App\Services\EventCrudService;


class EventController extends CrudController implements CrudControllerInterface
{
    public function __construct(EventCrudService $eventCrudService)
    {
        $this->service = $eventCrudService;
    }

    public function store(): JSendSuccessResponse
    {
        $this->request = app(EventRequest::class);

        return CrudController::store();
    }
}
