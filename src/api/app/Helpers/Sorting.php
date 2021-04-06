<?php

namespace App\Helpers;


class Sorting
{
    public const ASC = 'asc';
    public const DESC = 'desc';

    public ?string $column;
    public ?string $direction;

    public function __construct(?string $column = 'id', ?string $direction = self::ASC)
    {
        $this->column = $column;
        $this->direction = $direction;
    }
}
