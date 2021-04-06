<?php

namespace App\Exceptions;

use Exception;


class NotFoundException extends Exception
{
    public static function factory(string $modelName, string $modelId): NotFoundException
    {
        $message = "{$modelName} '{$modelId}' not found.";

        return new NotFoundException($message);
    }
}
