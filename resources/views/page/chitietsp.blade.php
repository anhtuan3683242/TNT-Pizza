@extends('master')
@section('content')
<div class="inner-header">
    <div class="container">
        <div class="pull-left">
            <h6 class="inner-title">Sản phẩm {{$sanpham->TenSp}}</h6>
        </div>
        <div class="pull-right">
            <div class="beta-breadcrumb font-large">
                <a href="{{route('trang-chu')}}">Home</a> / <span>Thông tin chi tiết món ăn</span>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>

<div class="container">
    <div id="content">
        <div class="row">
            <div class="col-sm-9">

                <div class="row">
                    <div class="col-sm-4">
                        <img src="source/image/product/{{$sanpham->Hinh}}" alt="">
                    </div>
                    <div class="col-sm-8">
                        <div class="single-item-body">
                            <p class="single-item-title"><h2>{{$sanpham->TenSp}}</h2></p>
                            <p class="single-item-price">
                                <span>{{ number_format($sanpham->GiaSp)}} đồng</span>
                            </p>
                        </div>

                        <div class="clearfix"></div>
                        <div class="space20">&nbsp;</div>

                        <div class="single-item-desc">
                            <p>{{$sanpham->MoTa}}</p>
                        </div>
                        <div class="space20">&nbsp;</div>

                        <p>Số lượng:</p>
                        <div class="single-item-options">
                            <select class="wc-select" name="color">
                                <option>Số lượng</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                            <a class="add-to-cart" href="#"><i class="fa fa-shopping-cart"></i></a>
                            <h4>Các phiên bản nâng cấp hiện chưa có quý khách vui lòng thông cảm</h4>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>

                <div class="space40">&nbsp;</div>
                <div class="woocommerce-tabs">
                    <ul class="tabs">
                        <li><a href="#tab-description">Mô Tả</a></li>
                    </ul>

                    <div class="panel" id="tab-description">
                        <p>{{$sanpham->MoTa}}</p>
                    </div>
                </div>
                <div class="space50">&nbsp;</div>
                <div class="beta-products-list">
                    <h4>Các món ăn cùng loại</h4>

                    <div class="row">
                    @foreach($sp_tuongtu as $spt)
                        <div class="col-sm-4">
                            <div class="single-item">
                                <div class="single-item-header">
                                    <a href="{{route('chitietsp',$spt->id)}}"><img src="source/image/product/{{$spt->Hinh}}" alt="" height="250px"></a>
                                </div>
                                <div class="single-item-body">
                                    <p class="single-item-title">{{$spt->TenSp}}</p>
                                    <p class="single-item-price"style="font-size:18px">
                                        <span>{{ number_format($spt->GiaSp)}} đồng</span>
                                    </p>
                                </div>
                                <div class="single-item-caption">
                                    <a class="add-to-cart pull-left" href="product.html"><i class="fa fa-shopping-cart"></i></a>
                                    <a class="beta-btn primary" href="{{route('chitietsp',$spt->id)}}">Details <i class="fa fa-chevron-right"></i></a>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                    </div>
                </div> <!-- .beta-products-list -->
            </div>
            <div class="col-sm-3 aside">
                <div class="widget">
                    <h3 class="widget-title">Các món ăn HOT</h3>
                    <div class="widget-body">
                    <div class="ribbon-wrapper"><div class="ribbon sale">HOT</div></div>
                        <div class="beta-sales beta-lists">
                        @foreach($new_product as $new)	
                            <div class="media beta-sales-item">
                                <a class="pull-left" href="{{route('chitietsp',$new->id)}}"><img src="source/image/product/{{$new->Hinh}}" alt=""></a>
                                <div class="media-body">
                                    {{$new->TenSp}}
                                    <span class="beta-sales-price">{{ number_format($new->GiaSp)}} đồng</span>
                                </div>
                            </div>
                        @endforeach
                        </div>
                    </div>
                </div> <!-- best sellers widget -->
            </div>
        </div>
    </div> <!-- #content -->
</div> <!-- .container -->
@endsection