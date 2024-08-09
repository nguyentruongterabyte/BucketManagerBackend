<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Budget extends Model
{
    use HasFactory;

    protected $table = 'budgets';

    protected $fillable = [
        '_name',
        '_amount',
        '_start_date',
        '_end_date',
        '_color',
        '_period',
        '_account_id'
    ];
    protected $dates = [
        '_start_date',
        '_end_date'
    ];

    public function user() {
        return $this->belongsTo(User::class, '_account_id');
    }

    public function budgetDetails() {
        return $this->hasMany(BudgetDetail::class, '_budget_id');
    }
}
