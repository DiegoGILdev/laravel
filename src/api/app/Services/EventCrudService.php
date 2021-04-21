<?php

namespace App\Services;

use App\Repositories\EventRepository;
use Exception;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;


class EventCrudService extends CrudService
{
    public function __construct(EventRepository $eventRepository)
    {
        $this->repository = $eventRepository;
    }


    /**
     * @param array $data
     * @return Model
     * @throws Exception
     */
    public function save(array $data): Model
    {
        DB::beginTransaction();

        try {
            $event = $this->repository->getByPathname($data['pathname']);

            if (is_null($event)) {
                DB::commit();
                return $this->repository->save($data);
            }

            $event->click_count++;
            $result = $this->repository->update($event->id, $event->toArray());

        } catch (Exception $exception) {
            DB::rollBack();
            throw $exception;
        }

        DB::commit();

        return $result;
    }
}
