<?php

namespace Tests\Functional\Adapters;

use App\Adapters\Cache\RedisAdapter;
use Illuminate\Contracts\Container\BindingResolutionException;
use Tests\TestCase;

class RedisAdapterTest extends TestCase
{
    /**
     * @throws BindingResolutionException
     */
    public function test_storeAndGet_success_whenConnected()
    {
        $redisAdapter = app()->make(RedisAdapter::class);
        $key = 'test_key';
        $expected = 200;

        $redisAdapter->store($key, $expected);
        $actual = $redisAdapter->get('test_key');

        $this->assertEquals($expected, $actual);
    }
}
