<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Material extends Model
{
    //
    public $timestamps = false;
    protected $fillable = [
        'name', 'material_type_id', 'price', 'quantity',
        'quantityM', 'quantityP', 'unit_id'
    ];

    // Связи
    public function unit()
    {
        return $this->belongsTo(Unit::class);
    }

    public function materialType()
    {
        return $this->belongsTo(MaterialType::class);
    }

    public function productMaterials()
    {
        return $this->hasMany(MaterialProduct::class);
    }
}
