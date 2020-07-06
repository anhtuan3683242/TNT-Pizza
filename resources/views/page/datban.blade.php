@extends('master')
@section('content')

<div class="inner-header">
    <div class="container">
        <div class="pull-left">
            <h6 class="inner-title">Đặt bàn</h6>
        </div>
        <div class="pull-right">
            <div class="beta-breadcrumb">
                <a href="{{route('trang-chu')}}">Trang chủ</a> / <span>Đặt bàn</span>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>

<div class="container">
    <div id="content">
        
        <form action="{{route('datban')}}" method="post" class="beta-form-checkout">
            <input type="hidden" name="_token" value="{{csrf_token()}}">
			
            <div class="row">
                <div class="col-sm-6">
                    <h4>Đặt bàn</h4>
                    <div class="space20">&nbsp;</div>

                    <div class="form-block" >
                        <label for="name1">Họ tên*</label>
                        <input type="text" name="name1" placeholder="Họ tên" required style="border: 1px solid black;">
                    </div>
                    <div class="form-block">    
                        <label>Giới tính </label>
                        <input id="gender1" type="radio" class="input-radio" name="gender1" value="nam" checked="checked" style="width: 10%"><span style="margin-right: 10%">Nam</span>
                        <input id="gender1" type="radio" class="input-radio" name="gender1" value="nữ" style="width: 10%"><span>Nữ</span>
                                    
                    </div>

                    <div class="form-block">
                        <label for="email1">Email*</label>
                        <input type="email1" id="email" name="email1" required placeholder="expample@gmail.com" style="border: 1px solid black;">
                    </div>

                    <div class="form-block">
                        <label for="time">Ngày đặt*</label>
                        <input type="date" id="time" name="time" placeholder="Ngày dự kiến" required style="border: 1px solid black;">
                    </div>
                    

                    <div class="form-block">
                        <label for="phone1">Điện thoại*</label>
                        <input type="text" id="phone1" name="phone1" required style="border: 1px solid black;">
                    </div>
                    
                    <div class="form-block">
                        <label for="notes1">Ghi chú</label>
                        <textarea id="notes1" name="notes1" style="border: 1px solid black;"></textarea>
                    </div>
                    
                </div>
                <div class="col-sm-6">
                    <div class="your-order">
                        <div class="your-order-head"><h5>Chọn size bàn</h5></div>
                        
                        <div class="your-order-body">
                            <ul class="payment_methods methods">
                                <li class="payment_method_bacs">
                                    <input id="payment_method_bacs" type="radio" class="input-radio" value="Nhỏ" checked="checked" data-order_button_text="" name="size">
                                    <label for="payment_method_bacs">Bàn kiểu gia đình(4-7 người) </label>
                                    <div class="payment_box payment_method_bacs" style="display: block;">
                                        Bàn xoay, có thêm đĩa xoay món ăn ở giữa
                                    </div>						
                                </li>

                                <li class="payment_method_cheque">
                                    <input id="payment_method_cheque" type="radio" class="input-radio" value="Lớn" data-order_button_text="" name="size">
                                    <label for="payment_method_cheque">Bàn tiệc nhiều người(10-20 người) </label>
                                    <div class="payment_box payment_method_bacs" style="display: block;">
                                        Bàn dạng hình chữ nhật, dài có thể thêm vào phù hợp với số người
                                    </div>					
                                </li>
                                
                            </ul>
                        </div>

                        <div class="text-center"><button type="submit" class="beta-btn primary" onclick="myFunction()" href="#">Xác nhận <i class="fa fa-chevron-right"></i></button></div>
                    </div> <!-- .your-order -->
                </div>
            </div>
        </form>
    </div> <!-- #content -->
</div> <!-- .container -->

<script>
	function myFunction() {
	  alert("Đặt bàn thành công");
	}
</script>
@endsection