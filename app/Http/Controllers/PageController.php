<?php

namespace App\Http\Controllers;
use App\Slide;
use App\products;
use App\loaisanpham;
use App\Cart;
use Session;
use App\customer;
use App\donhang;
use App\chitiet_donhang;
use App\datban;
use App\user;
use Hash;
use Auth;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PageController extends Controller
{

    public function getLienhe(){
        return view('page.lienhe');
    }
    public function getGioithieu(){
        return view('page.gioithieu');
    }
    public function getDatban(){
        return view('page.datban');
    }
    
    public function getAddtoCart(Request $req,$id){
        $product = products::where('id',$id)->first();
        $oldCart = Session('cart')?Session::get('cart'):null;
        $cart = new Cart($oldCart);
        $cart->add($product, $id);
        $req->session()->put('cart',$cart);
        return redirect()->back();
    }
    public function getDelItemCart($id){
        $oldCart = Session::has('cart')?Session::get('cart'):null;
        $cart = new Cart($oldCart);
        $cart->removeItem($id);
        if(count($cart->items)>0){
            Session::put('cart',$cart);
        }
        else{
            Session::forget('cart');
        }
        return redirect()->back();
    }
    public function getCheckout(){
        return view('page.dathang');
    }

    
    public function postCheckout(Request $req){
        $cart = Session::get('cart');

        $customer = new customer;
        $customer->name = $req->name;
        $customer->gender = $req->gender;
        $customer->email = $req->email;
        $customer->address = $req->address;
        $customer->phone_number = $req->phone;
        $customer->note = $req->notes;
        $customer->save();

        $donhan = new donhang;
        $donhan->id_customer = $customer ->id;
        $donhan->NgayTao = date('Y-m-d');
        $donhan->TongTien = $cart ->totalPrice;
        $donhan->payment = $req->payment;
        $donhan->note = $req->notes;
        $donhan->save();

        foreach ($cart->items as $key => $value) {
            $chitiet_donhan = new chitiet_donhang;
            $chitiet_donhan->MaDonDatHang = $donhan->id;
            $chitiet_donhan->MaSp = $key;
            $chitiet_donhan->quantity = $value['qty'];
            $chitiet_donhan->GiaSp = ($value['price']/$value['qty']);
            $chitiet_donhan->save();

        }
        Session::forget('cart');
        return redirect()->back()->with('thongbao','Đặt hàng thành công');


    }

    public function postDatban(Request $req){

        $datban = new datban;
        $datban->name = $req->name1;
        $datban->gender = $req->gender1;
        $datban->email = $req->email1;
        $datban->phone_number = $req->phone1;
        $datban->note = $req->notes1;
        $datban->NgayDat = $req->time;
        $datban->person = $req->size;
        $datban->save();

        //$donhan->NgayTao = date('Y-m-d');
        
        //$donhan->payment = $req->payment;

        return redirect()->back()->with('thongbao','Đặt bàn thành công -- Chúng tôi sẽ liên hệ số điện thoại của bạn!');
    }

    public function getSearch(Request $req){
        $product = products::where('TenSp','like','%'.$req->key.'%')->get();
        return view('page.search',compact('product'));
    }
    public function getChitiet(Request $req){
        $sanpham = products:: where('id',$req->id)->first();
        $new_product = products::where('new',1)->paginate(4);
        $sp_tuongtu = products:: where('MaLoaiSP',$sanpham->MaLoaiSP)->paginate(3);
        return view('page.chitietsp',compact('sanpham','sp_tuongtu','new_product'));
    }

    public function getIndex(){
        $slide = Slide::all();
        $new_product = products::where('new',1)->paginate(4);
        $orther_product = products::where('new',0)->paginate(8);
        //return view('page.trangchu',['slide'=>$slide]);
        return view('page.trangchu',compact('slide','new_product','orther_product'));
    }

    public function getNhabep(){
        $donhang = donhang::all();
        return view('page.nhabep',compact('donhang'));
    }

    public function getCheck(Request $req){
        $chitiet_donhang = chitiet_donhang::where('MaDonDatHang',$req->MaDonDatHang)
        ->join('products', 'chitiet_donhang.MaSp', '=', 'products.id')
        ->select('chitiet_donhang.*', 'products.TenSp', 'products.Hinh')
        ->get();
        return view('page.checkdon',compact('chitiet_donhang'));
    }

    public function getLoaiSp($type){
        $sp_theoloai = products::where('MaLoaiSP',$type)->get();
        $loai = loaisanpham::all();
        $ten_loai = loaisanpham::where('MaLoaiSP',$type)->first();
        return view('page.loaisp',compact('sp_theoloai','loai','ten_loai'));
    }
    public function xoa($id){
        donhang::where('MaDonDatHang',$id)->delete();
        return redirect()->back()->with('success','Dữ liệu xóa thành công.');
    }

    public function getLogin(){
        return view('page.dangnhap');
    }
    public function getSignin(){
        return view('page.dangki');
    }

    public function postSignin(Request $req){
        $this->validate($req,
            [
                'email'=>'required|email|unique:users,email',
                'password'=>'required|min:6|max:20',
                'full_name'=>'required',
                're_password'=>'required|same:password'
            ],
            [
                'email.required'=>'Vui lòng nhập email',
                'email.email'=>'Không đúng định dạng email',
                'email.unique'=>'Email đã có người sử dụng',
                'password.required'=>'Vui lòng nhập mật khẩu',
                're_password.same'=>'Mật khẩu không giống nhau',
                'password.min'=>'Mật khẩu ít nhất 6 kí tự'
            ]);
        $user = new user;
        $user->full_name = $req->full_name;
        $user->email = $req->email;
        $user->password = Hash::make($req->password);
        $user->phone = $req->phone;
        $user->address = $req->address;
        $user->save();
        return redirect()->back()->with('thanhcong','Tạo tài khoản thành công');
    }

    public function postLogin(Request $req){
        $this->validate($req,
            [
                'email'=>'required|email',
                'password'=>'required|min:6|max:20'
            ],
            [
                'email.required'=>'Vui lòng nhập email',
                'email.email'=>'Email không đúng định dạng',
                'password.required'=>'Vui lòng nhập mật khẩu',
                'password.min'=>'Mật khẩu ít nhất 6 kí tự',
                'password.max'=>'Mật khẩu không quá 20 kí tự'
            ]
        );
        $credentials = array('email'=>$req->email,'password'=>$req->password);
        $user = user::where([
                ['email','=',$req->email],
                
            ])->first();

        if($user){
            if(Auth::attempt($credentials)){

            return redirect()->back()->with(['flag'=>'success','message'=>'Đăng nhập thành công']);
            }
            else{
                return redirect()->back()->with(['flag'=>'danger','message'=>'Đăng nhập không thành công']);
            }
        }
        else{
           return redirect()->back()->with(['flag'=>'danger','message'=>'Tài khoản chưa kích hoạt']); 
        }
        
    }
    public function postLogout(){
        Auth::logout();
        return redirect()->route('trangchu');
    }
}
