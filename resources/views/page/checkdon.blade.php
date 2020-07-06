@extends('master')
@section('content')
<div class="container">
		<div id="content">
			<div class="table-responsive">
				<!-- Shop Products Table  echo //(\App\products::find($chitietmon['MaSp'])->TenSp)->get() // -->
				<table class="shop_table beta-shopping-cart-table" cellspacing="0">
					<thead>
						<tr>
							<th class="product-name"></th>
							<th class="product-quantity">Tên món</th>
							<th class="product-quantity">Số lượng</th>
						</tr>
					</thead>
					<tbody>
                        @foreach ($chitiet_donhang as $chitietmon)
						<tr class="cart_item">	
							<td class="product-name">
								<div class="media">
								<a class="pull-left" ><img class="pull-left" src="source/image/product/{{$chitietmon->Hinh}}" alt="" width="140px" height="100px"></a>
								<td>
                                    <p style=" padding-top: 35px;">{{$chitietmon->TenSp}}</p>
									</td>
								</div>
							</td>


							<td class="product-quantity" width = " 70">
                                <p>Số lượng: {{$chitietmon->quantity}} </p>
							</td>

                        </tr>
                        @endforeach
					</tbody>

				</table>
				<!-- End of Shop Table Products -->
			</div>
			<a class="back-btn" href="{{route('nha-bep')}}" ><i class="fa fa-chevron-left"></i> Trở lại</i></a>
			<!-- End of Cart Collaterals -->
		<div class="clearfix"></div>
	</div> <!-- #content -->
</div> <!-- .container -->

@endsection