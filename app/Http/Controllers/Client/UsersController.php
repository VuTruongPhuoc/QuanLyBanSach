<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use Cart;
use Illuminate\Http\Request;
use Session;
use App\Http\Controllers\Client\BasicClass;
use App\Models\DistrictModel;
use App\Models\WishListModel;
use App\Models\User;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class UsersController extends Controller
{
    public function index()
    {
        $user_id = Auth::user()->id;
        $wish = User::findOrFail($user_id);
        return BasicClass::handlingView('FE.users.details', ['wish' => $wish]);
    }

    public function resetpassword()
    {
        $user_id = Auth::user()->id;
        $value = User::findOrFail($user_id);
        return BasicClass::handlingView('FE.users.resetpassword', ['value' => $value]);
    }
    public function changepassword(Request $request)
    {
        $request->validate([
            'oldpassword' => 'required',
            'newpassword' => 'required|min:8|different:oldpassword',
            'confirmpassword' => 'required|same:newpassword',
        ],[
            'required' => 'Không được để trống!',
            'newpassword.min' => 'Mật khẩu mới phải có ít nhất 8 ký tự.',
            'newpassword.different' => 'Mật khẩu mới không được trùng với mật khẩu cũ.',
            'confirmpassword.same' => 'Xác nhận mật khẩu mới phải giống với mật khẩu mới.',
        ]);

        $up = User::where('id', $request->id)->first();
        if (Hash::check($request->oldpassword, $up->password)) {
            
            $up->password = bcrypt($request->newpassword);
            $up->save();
            return redirect()->back()->with('success', 'Mật khẩu đã được cập nhật.');
        } else {
            return redirect()->back()->with('error', 'Mật khẩu hiện tại không đúng.');
        }
    }
    public function order()
    {
        $user_id = Auth::user()->id;
        $wish = User::findOrFail($user_id);
        return BasicClass::handlingView('FE.users.order', ['wish' => $wish]);
    }

    public function wishlist()
    {
        $user_id = Auth::user()->id;
        $wish = User::findOrFail($user_id);
        return BasicClass::handlingView('FE.users.wishlist', ['wish' => $wish]);
    }
    public function edit_account(Request $request)
    {
        $user_id = Auth::user()->id;
        $value = User::findOrFail($user_id);
        
        $district = DistrictModel::orderBy('districtid', 'DESC')->where('provinceid', $value->province_id)->get();// Lấy danh sách quận/huyện từ tỉnh/thành của người dùng

        return BasicClass::handlingView('BE.users.edit', ['value' => $value, 'district' => $district]); 
    }

    public function update_account(Request $request, $id)
    { 
    // Validate input data
        $data = $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required',
                        'string',
                        'email',
                        'max:255',
                        Rule::unique('users')->ignore($id),],
            'phone' => 'numeric|min:111111111|max:99999999999',
            'address' => 'required',
            'province_id' => 'required',
            'district_id' => 'required',
        ], [
            'required' => 'Không được để trống!',
            'numeric' => 'Phải nhập số!',
            'name.string' => 'Phải là chuỗi!',
            'name.max' => 'Vượt quá độ dài tối đa là 255 kí tự!',
            'email.string' => 'Phải là chuỗi!',
            'email.email' => 'Phải là địa chỉ email hợp lệ!',
            'email.max' => 'Vượt quá độ dài tối đa là 255 kí tự!',
            'email.unique' => 'Email đã tồn tại trong hệ thống!',
            'phone.min' => 'Phải nhập ít nhất 9 chữ số!',
            'phone.max' => 'Không được nhập quá 11 chữ số!',
        ]);

        // Find the user to be updated
        $up = User::where('id', $request->id)->first();
        // Handle password update logic if needed

        // Update user information
        $up->name = $request->name;
        $up->email = $request->email;
        $up->phone = $request->phone;
        $up->address = $request->address;
        $up->province_id = $request->province_id;
        $up->district_id = $request->district_id;

        // Save the updated user
        $up->save();

        session()->flash('update', 'Cập nhật tài khoản thành công!');

        // Redirect to the appropriate route
        return redirect()->back();
    }


}
