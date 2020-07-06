<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class chitiet_donhang extends Model
{
    protected $table = "chitiet_donhang";

    public function products(){

        return $this->belongsTo('App\products','MaSp','id');
    
    }
    public function donhang(){

        return $this->belongsTo('App\donhang','MaDonDatHang','MaDonDatHang');
    
    }
}
