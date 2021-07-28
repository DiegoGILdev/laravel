<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;


/**
 * Class EditCount
 * @package App\Models
 * @property string user
 * @property string title
 * @property int count
 */
class EditCount extends Model
{
    use HasFactory;

    public const FIELD_USERNAME = 'username';
    public const FIELD_TITLE = 'title';
    public const FIELD_COUNT = 'count';

    public $timestamps = false;

    protected $table = 'editcount';
    protected $fillable = [
        'username',
        'title',
        'count',
    ];
}
