<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class donhang extends Model
{
    protected $table = "donhang";

    public function chitiet_donhang(){
        return $this->hasMany('App\chitiet_donhang','MaDonDatHang','MaDonDatHang');
    }
    public function donhang(){
    	return $this->belongsTo('App\customer','id_customer','id_customer');
    }

}
