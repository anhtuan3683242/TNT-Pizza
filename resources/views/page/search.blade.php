@extends('master')
@section('content')

<div class="container">	
		<div id="content" class="space-top-none">
			<div class="main-content">
				<div class="space60">&nbsp;</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="beta-products-list">
							<h4>Tìm kiếm</h4>
							<div class="beta-products-details">
								<p class="pull-left">Tìm thấy {{count($product)}} sản phẩm</p>
								<div class="clearfix"></div>
							</div>

							<div class="row">
							@foreach($product as $new)	
								<div class="col-sm-3">
									<div class="single-item">
									@if ($new->new=1)
									<div class="ribbon-wrapper"><div class="ribbon sale">HOT</div></div>
									@endif
										<div class="single-item-header">
											<a href="{{route('chitietsp',$new->MaSp)}}"><img src="source/image/product/{{$new->Hinh}}" alt="" height="250px"></a>
										</div>
										<div class="single-item-body">
											<p class="single-item-title">{{$new->TenSp}}</p>
											<p class="single-item-price" style="font-size:18px">
												<span>{{ number_format($new->GiaSp)}} đồng</span>
											</p>
										</div>
										<div class="single-item-caption">
											<a class="add-to-cart pull-left" href="{{route('themgiohang',$new->MaSp)}}"><i class="fa fa-shopping-cart"></i></a>
											<a class="beta-btn primary" href="{{route('chitietsp',$new->MaSp)}}">Chi tiết <i class="fa fa-chevron-right"></i></a>
											<div class="clearfix"></div>
										</div>	
									</div>
								</div>
							@endforeach
							</div>
						</div> <!-- .beta-products-list -->
						<div class="space50">&nbsp;</div>
					</div>
				</div> <!-- end section with sidebar and main content -->


    </div> <!-- .main-content -->
</div> <!-- #content -->
@endsection