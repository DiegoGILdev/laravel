<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;


/**
 * Class Event
 * @package App\Models
 * @property int click_count
 */
class Event extends Model
{
    use HasFactory;

    protected $fillable = [
        'pathname',
        'click_count',
    ];

    public $timestamps = false;
}
