<div id="header">
		<div class="header-top">
			<div class="container">
				<div class="pull-left auto-width-left">
					<ul class="top-menu menu-beta l-inline">
						<li><a href="{{route('trang-chu')}}"><i class="fa fa-home" ></i> 19 Nguyễn Hữu Thọ, Tân Phong, Quận 7</a></li>
						<li><a href="{{route('trang-chu')}}"><i class="fa fa-phone"></i> 01234567899</a></li>
					</ul>
				</div>
				<div class="pull-right auto-width-right">
					<ul class="top-details menu-beta l-inline">
					@if(Auth::check())
						<li><a href="{{route('nha-bep')}}" style="color:red;"><i style="font-size:12px;" class='fas'></i> Check bếp >></a></li>
						<li><a href="{{route('trang-chu')}}">Chào bạn {{Auth::user()->full_name}}</a></li>
						<li><a href="{{route('logout')}}">Đăng xuất</a></li>
					@else
						<li><a href="{{route('signin')}}">Đăng kí</a></li>
						<li><a href="{{route('login')}}">Đăng nhập</a></li>

					@endif
                       <!-- <li><a href="{{route('nha-bep')}}" style="color:red;"><i style="font-size:12px;" class='fas'></i> Check bếp >></a></li>-->
					</ul>
				</div>
				<div class="clearfix"></div>
			</div> <!-- .container -->
		</div> <!-- .header-top -->
		<div class="header-body">
			<div class="container beta-relative">
				<div class="pull-left">
					<a href="{{route('trang-chu')}}" id="logo"><img src="source/assets/dest/images/TNT.png" width="180px" alt=""></a>
				</div>
				<div class="pull-right beta-components space-left ov">
					<div class="space10">&nbsp;</div>
					<div class="beta-comp">
						<form role="search" method="get" id="searchform" action="{{route('search')}}">
					        <input type="text" value="" name="key" id="s" placeholder="Nhập từ khóa..." />
					        <button class="fa fa-search" type="submit" id="searchsubmit"></button>
						</form>
					</div>
					<div class="beta-comp">
					@if(Session::has('cart'))
						<div class="cart">
							<div class="beta-select"><i class="fa fa-shopping-cart"></i> Giỏ hàng (@if(Session::has('cart'))
							{{Session('cart')->totalQty}}
							@else Trống 
							@endif) <i class="fa fa-chevron-down"></i></div>
							<div class="beta-dropdown cart-body">
							@foreach($product_cart as $product)
								<div class="cart-item">
								<a class="pull-left" href="{{route('xoagiohang',$product['item']['id'])}}"><i class="fa fa-times"></i></a>
									<div class="media">
										<a class="pull-left" ><img src="source/image/product/{{$product['item']->Hinh}}"  alt=""></a>
										<div class="media-body">
											<span class="cart-item-title">{{$product['item']->TenSp}}</span>
											<span class="cart-item-amount"> {{$product['qty']}} *<span> {{$product['item']->GiaSp}} </span></span>
										</div>
									</div>
								</div>
							@endforeach
							
								<div class="cart-caption">
									<div class="cart-total text-right">Tổng tiền: <span class="cart-total-value">{{number_format(Session('cart')->totalPrice)}} đồng</span></div>
									<div class="clearfix"></div>

									<div class="center">
										<div class="space10">&nbsp;</div>
										<a href="{{route('dathang')}}" class="beta-btn primary text-center">Đặt hàng <i class="fa fa-chevron-right"></i></a>
									</div>
								</div>
							</div>
						</div> <!-- .cart -->
					@endif
					</div>
				</div>
				<div class="clearfix"></div>
			</div> <!-- .container -->
		</div> <!-- .header-body -->
		<div class="header-bottom" style="background-color: #f0932b">
			<div class="container">
				<div class="visible-xs clearfix"></div>
				<nav class="main-menu">
					<ul class="l-inline ov">
						<li><a href="{{route('trang-chu')}}">Trang chủ</a></li>
						<li><a>Loại Sản phẩm</a>
							<ul class="sub-menu">
								@foreach($loai_sp as $loai)
								<li><a href="{{route('loaisp',$loai->MaLoaiSP)}}">{{$loai->TenLoai}}</a></li>
								@endforeach
							</ul>
						</li>
						<li><a href="{{route('datban')}}">Đặt bàn</a></li>
						<li><a href="{{route('Gioithieu')}}">Giới thiệu</a></li>
						<li><a href="{{route('LienHe')}}">Liên hệ</a></li>
					</ul>
					<div class="clearfix"></div>
				</nav>
			</div> <!-- .container -->
		</div> <!-- .header-bottom -->
	</div> <!-- #header -->