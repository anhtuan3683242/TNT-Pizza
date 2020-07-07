@extends('master')
@section('content')

<div class="inner-header">
    <div class="container">
        <div class="pull-left">
            <h6 class="inner-title">Đặt hàng</h6>
        </div>
        <div class="pull-right">
            <div class="beta-breadcrumb">
                <a href="{{route('trang-chu')}}">Trang chủ</a> / <span>Đặt hàng</span>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
    
<div class="container">
    <div id="content">       
        <form action="{{route('dathang')}}" method="post" class="beta-form-checkout">
            <input type="hidden" name="_token" value="{{csrf_token()}}">
            <div class="row" style="color:red; text-align:center;"><strong>@if(Session::has('thongbao')){{Session::get('thongbao')}}@endif</strong></div>
            <div class="row">
                <div class="col-sm-6">
                    
                    <div class="space20">&nbsp;</div>

                    <div class="form-block">
                        <label for="name">Họ tên*</label>
                        <input type="text" name="name" style="border: 1px solid black;" placeholder="Họ tên" required >
                    </div>
                    <div class="form-block">
                        <label>Giới tính </label>
                        <input id="gender" type="radio" class="input-radio" name="gender" value="nam" checked="checked" style="width: 10%"><span style="margin-right: 10%">Nam</span>
                        <input id="gender" type="radio" class="input-radio" name="gender" value="nữ" style="width: 10%"><span>Nữ</span>
                                    
                    </div>

                    <div class="form-block">
                        <label for="email">Email*</label>
                        <input type="email" id="email" style="border: 1px solid black;" name="email" required placeholder="expample@gmail.com">
                    </div>

                    <div class="form-block">
                        <label for="adress">Địa chỉ*</label>
                        <input type="text" id="address" style="border: 1px solid black;" name="address" placeholder="Địa chỉ" required>
                    </div>
                    

                    <div class="form-block">
                        <label for="phone">Điện thoại*</label>
                        <input type="text" id="phone" style="border: 1px solid black;" name="phone" required>
                    </div>
                    
                    <div class="form-block">
                        <label for="notes">Ghi chú*</label>
                        <textarea id="notes" style="border: 1px solid black;" name="notes" placeholder="Nếu không có vui lòng ghi Không." required></textarea>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="your-order">
                        <div class="your-order-head"><h5>Đơn hàng của bạn</h5></div>
                        <div class="your-order-body" style="padding: 0px 10px">
                            <div class="your-order-item">
                                <div>
                                @if(Session::has('cart'))
                                @foreach($product_cart as $cart)    
                                <!--  one item	 -->
                                <div class="media">
                                        <a class="pull-left" href="{{route('xoagiohang',$cart['item']['id'])}}"><i class="fa fa-times"></i></a>
										<img width="25%" src="source/image/product/{{$cart['item']['Hinh']}}" alt="" class="pull-left">
										<div class="media-body">
											<p class="font-large">{{$cart['item']['name']}}</p>
											<span class="color-gray your-order-info"style="margin-top: 25px;">Đơn giá: {{number_format($cart['price'])}} đồng</span>
											<span class="color-gray your-order-info"style="margin-top: 25px;">Số lượng: {{$cart['qty']}}</span>
										</div>
									</div>
                                <!-- end one item -->
                                @endforeach
                                @endif
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="your-order-item">
                                <div class="pull-left"><p class="your-order-f18">Tổng tiền:</p></div>
                                <div class="pull-right"><h5 class="color-black">@if(Session::has('cart')){{number_format($totalPrice)}}@else 0 @endif đồng</h5></div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="your-order-head"><h5>Hình thức thanh toán</h5></div>
                        
                        <div class="your-order-body">
                            <ul class="payment_methods methods">
                                <li class="payment_method_bacs">
                                    <input id="payment_method_bacs" type="radio" class="input-radio" value="COD" checked="checked" data-order_button_text="" name="payment">
                                    <label for="payment_method_bacs">Thanh toán khi nhận hàng </label>
                                    <div class="payment_box payment_method_bacs" style="display: block;">
                                        Cửa hàng sẽ gửi hàng đến địa chỉ của bạn, bạn xem hàng rồi thanh toán tiền cho nhân viên giao hàng
                                    </div>						
                                </li>

                                <li class="payment_method_cheque">
                                    <input id="payment_method_cheque" type="radio" class="input-radio" value="ATM" data-order_button_text="" name="payment">
                                    <label for="payment_method_cheque">Chuyển khoản </label>
                                    <div class="payment_box payment_method_cheque" style="display: none;">
                                        Chuyển tiền đến tài khoản sau:
                                        <br>- Số tài khoản: 123 456 789
                                        <br>- Chủ TK: Nguyễn A
                                        <br>- Ngân hàng ACB, Chi nhánh TPHCM
                                    </div>						
                                </li>
                                
                            </ul>
                        </div>                       
                        </div>
                        <!--<div class="text-center"><button class="beta-btn primary" onclick="popup()" >Đặt hàng <i class="fa fa-chevron-right"></i></button> -->
                        <div class="text-center"><button type="submit" class="beta-btn primary" onclick="popup()" href="#">Đặt hàng <i class="fa fa-chevron-right"></i></button></div>
                    </div> <!-- .your-order -->
                    
                </div>
            </div>
        </form>
    </div> <!-- #content -->
</div> <!-- .container -->
<div id="box-message">
        <span class="ion-ios7-checkmark-outline"></span>
        <h1>Hoàn tất đơn hàng</h1>
        <div class="space30">&nbsp;</div> 
        <a onclick="popup()" class="close-popup" >Thank You</a>
    </div>
    <script type="text/javascript">
        var c = 0;
        function popup() {
            if (c==0){
                document.getElementById("box-message").style.display = "block";
                c = 1
            }else{
                document.getElementById("box-message").style.display = "none";
                c = 0
            }
        }
    </script>
@endsection