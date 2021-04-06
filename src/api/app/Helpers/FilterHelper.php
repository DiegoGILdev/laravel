<?php

namespace App\Helpers;


class FilterHelper
{
    public string $test;

    public function __construct(string $test = "nok")
    {
        $this->test = $test;
    }

    public function setTest(string $value): FilterHelper
    {
        $this->test = $value;

        return $this;
    }
}
