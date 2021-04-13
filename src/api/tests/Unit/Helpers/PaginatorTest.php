<?php

namespace Tests\Unit\Helpers;

use App\Helpers\Paginator;
use PHPUnit\Framework\TestCase;

class PaginatorTest extends TestCase
{
    public function test_setLimit()
    {
        $sut = new Paginator();

        $actual = $sut->setLimit(80);

        $this->assertEquals(80, $actual->limit);
    }
}
