@extends('master')
@section('content')
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
<div class="inner-header">
    <div class="container">
        <div class="pull-left">
            <h6 class="inner-title">Nhà bếp</h6>
        </div>
        <div class="pull-right">
            <div class="beta-breadcrumb">
                <a href="{{route('trang-chu')}}">Trang chủ</a> / <span>Nhà bếp</span>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
    
<div class="container">
    <div id="content">
    <div class="row" style="color:red; text-align:center;"><strong>@if(Session::has('thongbao')){{Session::get('thongbao')}}@endif</strong></div>
        <table id="customers">
        <tr>
            <th>ID</th>
            <th>thông tin đơn:</th>
            <th>Finish</th>
        </tr>
        @foreach($donhang as $don)
        <tr>
        
            <td>{{$don->MaDonDatHang}}</td>
            <td><a href="{{route('check',$don->MaDonDatHang)}}"><i class="fa fa-thumb-tack"></i> Thông tin</a></td>
            <td><a class="delete-btn" href="xoa/{{$don['MaDonDatHang']}}"> Finish</a></td>
        
        </tr>
        @endforeach
        </table>

    </div> <!-- #content -->
</div> <!-- .container -->
@endsection