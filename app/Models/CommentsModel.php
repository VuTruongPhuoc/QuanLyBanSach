<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommentsModel extends Model
{
    use HasFactory;

    protected $table ='table_comments';

    public $timestamps = true;
}
