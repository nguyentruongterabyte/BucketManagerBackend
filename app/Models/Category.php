<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $fillable = [
        '_name',
        '_icon',
        '_color',
        '_transaction_type_id'
    ];
    protected $table = 'categories';

    public function transactions() {
        return $this->hasMany(Transaction::class, '_category_id');
    }
}
