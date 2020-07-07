<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class products extends Model
{
    protected $table = "products";

    public function loaisanpham(){
        return $this -> belongsTo('App\loaisanpham','MaLoaiSP','MaLoaiSP');
    }

    public function chitiet_donhang(){
        return $this->hasMany('App\chitiet_donhang','MaSp','id');
    }
}
