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

        $redisAdapter->store($key, $expected, 120);
        $actual = $redisAdapter->get($key);
        $this->assertEquals($expected, $actual);

        $expected = 201;
        $actual = $redisAdapter->increment($key);
        $this->assertEquals($expected, $actual);

        $expected = 200;
        $actual = $redisAdapter->decrement($key);
        $this->assertEquals($expected, $actual);

        $redisAdapter->delete($key);
        $actual = $redisAdapter->get($key);
        $this->assertNull($actual);
    }
}
