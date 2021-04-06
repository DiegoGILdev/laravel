<?php

namespace App\Helpers;


class Paginator
{
    public ?int $limit;
    public ?Sorting $sorting;

    public function __construct(int $limit = 10, ?Sorting $sorting = null)
    {
        $this->limit = $limit;
        $this->sorting = $sorting ?? new Sorting();
    }

    /**
     * @param int|null $limit
     * @return Paginator
     */
    public function setLimit(?int $limit): Paginator
    {
        $this->limit = $limit;
        return $this;
    }

    /**
     * @param Sorting $sorting
     * @return Paginator
     */
    public function setSorting(Sorting $sorting): Paginator
    {
        $this->sorting = $sorting;
        return $this;
    }
}
