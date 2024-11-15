<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    use HasFactory;

    protected $fillable = ['judul', 'isi'];

    // Accessor untuk mendapatkan judul terkapitalisasi
    public function getJudulCapitalizedAttribute()
    {
        return ucwords($this->judul);
    }
}