<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MaterialProduct extends Model
{
    //
    public $timestamps = false;
    protected $fillable = ['material_id', 'product_id', 'quantity'];

    // Связи
    public function material()
    {
        return $this->belongsTo(Material::class);
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
