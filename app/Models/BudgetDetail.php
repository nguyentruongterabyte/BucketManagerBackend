<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BudgetDetail extends Model
{
    use HasFactory;

    protected $table = 'budget_details';

    protected $fillable = [
        '_budget_id',
        '_category_id'
    ];

    public function budget() {
        return $this->belongsTo(Budget::class, '_budget_id');
    }

    public function category() {
        return $this->belongsTo(Category::class, '_category_id');
    }
}
