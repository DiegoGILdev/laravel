<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;


class Bill extends Model
{
    use HasFactory;

    protected $fillable = [
        'value',
        'payed',
        'recorded',
        'order_id',
    ];
}
