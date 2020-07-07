@extends('master')
@section('content')
<div class="inner-header">
		<div class="container">
			<div class="pull-left">
				<h6 class="inner-title">Liên hệ</h6>
			</div>
			<div class="pull-right">
				<div class="beta-breadcrumb font-large">
					<a href="index.html">Trang chủ</a> / <span>Liên hệ</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="beta-map">
		
	<iframe width="600" height="450" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJVzo0fb0vdTEReAX_jZEmyrU&key=AIzaSyAABViVo6JukWwKP3vNqdOMw48NvPo-Nak" allowfullscreen></iframe>
	</div>
	<div class="container">
		<div id="content" class="space-top-none">
			
			<div class="space50">&nbsp;</div>
			<div class="row">
				<div class="col-sm-8">
					<h2>Liên hệ với chúng tôi</h2>
					<div class="space20">&nbsp;</div>
					<form action="#" method="a" class="contact-form" >	
						<div class="form-block">
							<input name="your-name" type="text" placeholder="Tên" style="border: 1px solid black;">
						</div>
						<div class="form-block">
							<input name="your-email" type="email" placeholder="Email" style="border: 1px solid black;">
						</div>
						<div class="form-block">
							<input name="your-subject" type="text" placeholder="Tiêu đề"style="border: 1px solid black;">
						</div>
						<div class="form-block">
							<textarea name="your-message" placeholder="Tin nhắn"style="border: 1px solid black;"></textarea>
						</div>
						<div>
						<a href="{{route('trang-chu')}}" style="font-size:25px;color:Red">Gửi<i class="fa fa-chevron-right"></i></a></li>
						</div>
					</form>
				</div>
				<div class="col-sm-4">
					<h2>Thông tin liên hệ</h2>
					<div class="space20">&nbsp;</div>

					<h6 class="contact-title">Địa chỉ</h6>
					<p>
						19 Nguyễn Hữu Thọ,<br>
						Phường Tân Phong, Quận 7 <br>
						Hồ Chí Minh
					</p>
					<div class="space20">&nbsp;</div>
					<h6 class="contact-title">Email</h6>
					<p>
						Liên hệ với chúng tôi qua Email hoặc form ở bên cạnh <br>
						<a href="#">tntpizza@gmail.com</a>
					</p>
					<div class="space20">&nbsp;</div>
					<h6 class="contact-title">Tuyển dụng</h6>
					<div class="space5">&nbsp;</div>
					<p>
						Chúng tôi luôn tìm kiếm thêm những đầu bếp tài năng. <br>
						Tham gia cùng chúng tôi. <br>
						<a href="#">tntpizza@gmail.com</a>
					</p>
				</div>
			</div>
		</div> <!-- #content -->
	</div> <!-- .container -->

@endsection