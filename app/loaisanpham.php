<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class loaisanpham extends Model
{
    protected $table = "loaisanpham";
    public function products(){

        return $this->hasMany('App\products','MaLoaiSP','MaLoaiSP');

    }
}
