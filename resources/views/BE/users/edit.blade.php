@extends('FE.layout_account')
@section('content')
<div class="container">
    <div class="row" style="margin-bottom: 20px; margin-top: 20px;">
        <div class="col-12">

            
               
                <div class="tab-content tabs">
                    <div role="tabpanel" class="tab-pane fade in active" id="Section1">
                        <div class="row">

                            <h3 class="col-sm-12 col-md-4 col-lg-4">Cập nhật tài khoản</h3>
                        </div>
                        <div class="card">
                            <div class="vertical-tab" role="tabpanel" style="width: 100%">
                                <div class="x_content">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="notification-container" style="text-align: center; color: #2c2923; padding: 10px; font-size: 20px;">
                                                @foreach(['delete', 'save', 'update', 'disable_status', 'enable_status'] as $messageKey)
                                                    @if(session()->has($messageKey))
                                                        {{ session($messageKey) }}
                                                    @endif
                                                @endforeach
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <div class="card-body">
                                <form action="{{ route('updateAccount', ['id' => $value->id]) }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="item form-group">
                                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Tên 
                                            <span class="required">*</span></label>
                                        <div class="col-md-6 col-sm-6 ">
                                            <input type="text" name="name" class="form-control" id="exampleInputName"
                                                placeholder="Tên ..." value="{{ $value->name  }}">
                                            <!-- <input type="text" id="first-name" name="name" class="form-control "> -->
                                            <div>
                                                @if ($errors->any())
        
                                                @if ($errors->has('name'))
                                                {{ $errors->first('name')}}
                                                @endif
                                                @endif
                                            </div>
                                        </div>
        
                                    </div>
                                    <div class="item form-group">
                                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Email 
                                            <span class="required">*</span></label>
                                        <div class="col-md-6 col-sm-6 ">
                                            <input type="text" name="email" class="form-control" id="exampleInputEmail"
                                                placeholder="Nhập email ..." value="{{ $value->email  }}">
                                            <!-- <input type="text" id="first-name" name="name" class="form-control "> -->
                                            <div>
                                                @if ($errors->any())
        
                                                @if ($errors->has('email'))
                                                {{ $errors->first('email')}}
                                                @endif
                                                @endif
                                            </div>
                                        </div>
        
                                    </div>
                                    <div class="item form-group">
                                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Số điện thoại 
                                            <span class="required">*</span></label>
                                        <div class="col-md-6 col-sm-6 ">
                                            <input type="text" name="phone" class="form-control" id="exampleInputPhone"
                                                placeholder="Nhập phone ..." value="{{ $value->phone  }}">
                                            
                                            <div>
                                                @if ($errors->any())
        
                                                    @if ($errors->has('phone'))
                                                    {{ $errors->first('phone')}}
                                                    @endif
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">Tỉnh/thành
                                            <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6">
                                            <select
                                                class="form-control m-bot15 @error('province_id') is-invalid @enderror"
                                                id="country_id" name="province_id">
                                                <option value="{{ $value->province_id }}" selected>{{ $value->province->name }}</option>
                                                @foreach($countries as $country)
                                                    <option value="{{ $country->provinceid }}">{{ $country->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        
                                    </div>
                                    <div class="item form-group" id="city">
                                        <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">Quận/Huyện
                                            <span class="required">*</span>
                                        </label>
                                        
                                        <div class="col-md-6 col-sm-6">
                                            <select
                                                class="form-control m-bot15 @error('district_id') is-invalid @enderror"
                                                id="state_id" name="district_id">
                                                <option value="{{ $value->district_id }}">{{ $value->district->name }}</option>
                                                @foreach($district as $d)
                                                     <option value="{{ $d->districtid }}">{{$d->name }}</option>
                                                @endforeach
                                            </select>

                                        </div>
                                    </div>
                                    
                                    <div class="item form-group" id="address">

                                        <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">Địa chỉ nhà
                                            <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6">
                                            
                                            <input type="text" name="address" id="address" class="form-control"
                                                value="{{ $value->address }}" />
                                                <div>
                                                    @if ($errors->any())
            
                                                        @if ($errors->has('address'))
                                                        {{ $errors->first('address')}}
                                                        @endif
                                                    @endif
                                                </div>
                                        </div>
                                    </div>                            
                                  
                                    <div class="ln_solid"></div>
                                    <div class="item form-group">
                                        <div class="col-md-6 col-sm-6 offset-md-3">
                                            <button type="submit" class="btn btn-success">Cập Nhật</button>
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
@endsection

