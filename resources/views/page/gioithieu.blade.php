@extends('master')
@section('content')
	<div class="inner-header">
		<div class="container">
			<div class="pull-left">
				<h6 class="inner-title">Giới thiệu</h6>
			</div>
			<div class="pull-right">
				<div class="beta-breadcrumb font-large">
					<a href="index.html">Trang chủ</a> / <span>Giới thiệu</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<div class="container">
		<div id="content">
			<div class="our-history">
				<h2 class="text-center wow fadeInDown">Lịch sử hình thành</h2>
				<div class="space35">&nbsp;</div>

					<div class="history-slides">
						<div> 
							<div class="row">
							<div class="col-sm-5">
								<img src="source/assets/dest/images/res.jpg" alt="">
							</div>
							<div class="col-sm-7">
								<h5 class="other-title">Về TNT Pizza</h5>
								<p>
									19 Nguyễn Hữu Thọ,<br />
									Phường Tân Phong, Quận 7<br />
									Hồ Chí Minh
								</p>
								<div class="space20">&nbsp;</div>
								<p>Mở cửa hàng đầu tiên tại Hồ Chí Minh. Đầu năm 2020 trở thành cửa hàng phát triển nhanh nhất ở Việt Nam. Luôn đưa ra những sản phẩm mới vào trong thực đơn. Doanh thu công ty đạt hơn 3 tỷ $ vào giữa năm 2020. Được phép đặt hàng trực tiếp hoặc có thể trải nghiệm những dịch vụ tốt nhất tại nhà hành với dịch vụ đặt bàn trực tuyến. </p>
							</div>
							</div> 
						</div>
						
					</div>
				</div>
			</div>

			<div class="space50">&nbsp;</div>
			<hr />
			<div class="space50">&nbsp;</div>
			<h2 class="text-center wow fadeInDown">Đánh giá của khách hàng</h2>
			<div class="space20">&nbsp;</div>
			<p class="text-center wow fadeInLeft">Số liệu đến 06/2020</p>
			<div class="space35">&nbsp;</div>

			<div class="row">
			<div class="col-sm-2 col-sm-push-2">
				<div class="beta-counter">
						<p class="beta-counter-value timer numbers" data-to="19855" data-speed="2000"></p>
						<p class="beta-counter-title"></p>
					</div>
				</div>
				<div class="col-sm-2 col-sm-push-2">
					<div class="beta-counter">
						<p class="beta-counter-icon"><i class="fa fa-user"></i></p>
						<p class="beta-counter-value timer numbers" data-to="19855" data-speed="2000">19855</p>
						<p class="beta-counter-title">Khách hàng hài lòng</p>
					</div>
				</div>

				<div class="col-sm-2 col-sm-push-2">
					<div class="beta-counter">
						<p class="beta-counter-icon"><i class="fa fa-picture-o"></i></p>
						<p class="beta-counter-value timer numbers" data-to="3568" data-speed="2000">3568</p>
						<p class="beta-counter-title">Không gian nhà hàng</p>
					</div>
				</div>

				<div class="col-sm-2 col-sm-push-2">
					<div class="beta-counter">
						<p class="beta-counter-icon"><i class="fa fa-clock-o"></i></p>
						<p class="beta-counter-value timer numbers" data-to="9582" data-speed="2000">9582</p>
						<p class="beta-counter-title">Thời gian hỗ trợ khách hàng</p>
					</div>
				</div>

				<div class="col-sm-2 col-sm-push-2">
					<div class="beta-counter">
						<p class="beta-counter-icon"><i class="fa fa-pencil"></i></p>
						<p class="beta-counter-value timer numbers" data-to="15" data-speed="2000">15</p>
						<p class="beta-counter-title">Dự án đang phát triển</p>
					</div>
				</div>
			</div> <!-- .beta-counter block end -->

			<div class="space50">&nbsp;</div>
			<hr />
			<div class="space50">&nbsp;</div>

			<h2 class="text-center wow fadeInDownwow fadeInDown">Thành viên</h2>
			<div class="space20">&nbsp;</div>
			<h5 class="text-center other-title wow fadeInLeft">Founders</h5>
			<div class="space20">&nbsp;</div>
			<div class="row">
				<div class="col-sm-6 wow fadeInLeft">
					<div class="beta-person media">
					
						<img class="pull-left" src="source/assets/dest/images/addd.png" alt="">
					
						<div class="media-body beta-person-body">
							<h5>Trần Phạm Anh Tuấn</h5>
							<p class="font-large">Founder</p>
							<a href="{{route('Gioithieu')}}">Chi tiết <i class="fa fa-chevron-right"></i></a>
						</div>
					</div>	
				</div>
				<div class="col-sm-6 wow fadeInRight">
					<div class="beta-person media ">
					
						<img class="pull-left" src="source/assets/dest/images/addd.png" alt="">
					
						<div class="media-body beta-person-body">
							<h5>Tô Quốc Thắng</h5>
							<p class="font-large">Founder</p>
							<a href="{{route('Gioithieu')}}">Chi tiết <i class="fa fa-chevron-right"></i></a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="space60">&nbsp;</div>
			<h5 class="text-center other-title wow fadeInDown">Những đầu bếp hàng đầu</h5>
			<p class="text-center wow fadeInUp">Đầu bếp được tuyển từ khắp nơi trên thế giới với những thành tích thuộc Top đầu trong ngành ẩm thực.</p>
			<div class="space20">&nbsp;</div>
			<div class="row">
				<div class="col-sm-3">
					<div class="beta-person beta-person-full">
				<div class="bets-img-hover">
						<img src="source/assets/dest/images/person1.jpg" alt="">
				</div>
						<div class="beta-person-body">
							<h5>Gordon Ramsay</h5>
							<div class="space5">&nbsp;</div>
							<p class="font-large">Head chef</p>
							<p>Được Hoàng gia Anh phong cho tước OBE (Tiểu hiệp sĩ) vào năm 2006 để tôn vinh những cống hiến của ông</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="beta-person beta-person-full">
					<div class="bets-img-hover">
						<img src="source/assets/dest/images/person2.jpg" alt="">
					</div>
						<div class="beta-person-body">
							<h5>Wolfgang Puck</h5>
							<div class="space5">&nbsp;</div>
							<p class="font-large">Soups Chef</p>
							<p>Sở hữu nhiều thành tích trong ngành ẩm thực và gần đây nhất là danh hiệu Gold Plate vào năm 2017</p>
						</div>	
					</div>
				</div>
				<div class="col-sm-3">
					<div class="beta-person beta-person-full">
					<div class="bets-img-hover">
						<img src="source/assets/dest/images/person3.jpg" alt="">
					</div>
						<div class="beta-person-body">
							<h5>Salvatore Cuomo</h5>
							<p class="font-large">Restaurant Manager</p>
							<p>Được Unesco tặng cho danh hiệu nghệ thuật làm bánh pizza vào năm 2017</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="beta-person beta-person-full">
					<div class="bets-img-hover">	
						<img src="source/assets/dest/images/person4.jpg" alt="">
					</div>
						<div class="beta-person-body">
							<h5>Laura Calder</h5>
							<p class="font-large">Staff</p>
							<p>Là tác giả của Thực phẩm Pháp tại nhà. Cô cũng đã viết Hương vị Pháp bán chạy nhất: Thanh lịch, Hàng ngày, Ăn uống, giành được huy chương vàng Hương vị Canada năm 2010 cho Cookbook. </p>
						</div>
					</div>
				</div>
			</div>
		</div> <!-- #content -->
	</div> <!-- .container -->

@endsection