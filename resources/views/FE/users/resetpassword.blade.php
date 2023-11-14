@extends('FE.layout_account')
@section('content')
<div class="container">
    <div class="row" style="margin-bottom: 20px; margin-top: 20px;">
        <div class="col-12">
                <div class="tab-content tabs">
                    <div role="tabpanel" class="tab-pane fade in active" id="Section1">
                        <div class="row">

                            <h3 class="col-sm-12 col-md-4 col-lg-4">Đổi mật khẩu</h3>
                        </div>
                        <div class="card">
                            <div class="vertical-tab" role="tabpanel" style="width: 100%">
                                <div class="x_content">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="notification-container" style="text-align: center; color: #2c2923; padding: 10px; font-size: 20px;">
                                                @foreach(['success', 'error'] as $messageKey)
                                                    @if(session()->has($messageKey))
                                                        {{ session($messageKey) }}
                                                    @endif
                                                @endforeach
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <div class="card-body">
                                <form action="{{ route('resetPassword', ['id' => $value->id]) }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="item form-group">
                                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Mật khẩu hiện tại
                                            <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 input-group">
                                            <input type="password" name="oldpassword" class="form-control" id="oldpass" placeholder="">
                                            <div class="input-group-append">
                                                <button class="btn btn-outline-secondary" type="button" id="show-hide-oldpass">Hiện</button>
                                            </div>
                                            <div>
                                                @if ($errors->any())
                                                    @if ($errors->has('oldpassword'))
                                                        {{ $errors->first('oldpassword')}}
                                                    @endif
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                    
                                    
                                    <div class="item form-group">
                                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Mật khẩu mới
                                            <span class="required">*</span></label>
                                        <div class="col-md-6 col-sm-6 input-group">
                                            <input type="password" name="newpassword" class="form-control" id="changepass" placeholder="">
                                            <div class="input-group-append">
                                                <button class="btn btn-outline-secondary" type="button" id="show-hide-changepass">Hiện</button>
                                            </div>
                                            <div>
                                                @if ($errors->any())
                                                    @if ($errors->has('newpassword'))
                                                        {{ $errors->first('newpassword')}}
                                                    @endif
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="item form-group">
                                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Nhập lại mật khẩu mới
                                            <span class="required">*</span></label>
                                        <div class="col-md-6 col-sm-6 input-group">
                                            <input type="password" name="confirmpassword" class="form-control" id="confirmpass" placeholder="">
                                            <div class="input-group-append">
                                                <button class="btn btn-outline-secondary" type="button" id="show-hide-confirmpass">Hiện</button>
                                            </div>
                                            <div>
                                                @if ($errors->any())
                                                    @if ($errors->has('confirmpassword'))
                                                        {{ $errors->first('confirmpassword')}}
                                                    @endif
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="ln_solid"></div>
                                    <div class="item form-group">
                                        <div class="col-md-6 col-sm-6 offset-md-3">
                                            <button type="submit" class="btn btn-success">Đổi mật khẩu</button>
                                        </div>
                                    </div>
        
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const passwordInputs = document.querySelectorAll('input[type="password"]');
        const showHideButtons = document.querySelectorAll('[id^="show-hide-"]');

        showHideButtons.forEach(function (button, index) {
            button.addEventListener('click', function () {
                const passwordInput = passwordInputs[index];
                if (passwordInput.type === 'password') {
                    passwordInput.type = 'text';
                    button.textContent = 'Ẩn';
                } else {
                    passwordInput.type = 'password';
                    button.textContent = 'Hiện';
                }
            });
        });
    });
</script>

<style>
    .input-group .input-group-append {
        cursor: pointer;
    }

    .input-group .input-group-append button {
        border-top-left-radius: 0;
        border-bottom-left-radius: 0;
    }
</style>
@endsection

