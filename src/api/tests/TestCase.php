<?php

namespace Tests;

use Illuminate\Foundation\Testing\DatabaseTransactions;
use Illuminate\Foundation\Testing\TestCase as BaseTestCase;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\JWTGuard;

abstract class TestCase extends BaseTestCase
{
    use CreatesApplication;
    use DatabaseTransactions;

    protected array $headers;

    public function setUp(): void
    {
        parent::setUp();

        /** @var JWTGuard $guard */
        $guard = Auth::guard();
        $token = $guard->tokenById(1);
        $this->headers = ['Authorization' => 'Bearer ' . $token];
    }
}
