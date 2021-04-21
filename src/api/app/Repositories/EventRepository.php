<?php

namespace App\Repositories;

use App\Models\Event;
use Illuminate\Database\Eloquent\Model;


class EventRepository extends EloquentRepository
{
    public function __construct(Event $event)
    {
        $this->model = $event;
    }

    public function getByPathname(string $productId): ?Model
    {
        return $this->model::query()->where('pathname', $productId)->first();
    }
}
