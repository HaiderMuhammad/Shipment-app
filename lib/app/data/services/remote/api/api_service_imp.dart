import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:shipment_app/app/data/models/login_response.dart';
import 'package:shipment_app/app/data/models/new_password.dart';
import 'package:shipment_app/app/data/models/otp.dart';
import 'package:shipment_app/app/data/models/register.dart';
import 'package:shipment_app/app/data/models/register_response.dart';
import 'package:shipment_app/app/data/models/resend_phone.dart';
import 'package:shipment_app/app/data/models/verify.dart';
import 'package:shipment_app/app/data/services/local/shared_preferences.dart';
import 'package:shipment_app/app/modules/auth/views/login/login_view.dart';
import 'package:shipment_app/app/modules/auth/views/otp/otp_view.dart';
import 'package:shipment_app/app/modules/auth/views/verify/verify_view.dart';
import 'package:shipment_app/app/modules/navbar/views/navbar_view.dart';
import 'package:shipment_app/app/utils/utilServices.dart';
import '../../../models/login.dart';
import 'api_service.dart';





class ApiServiceImp extends GetConnect implements ApiService {
  final UtilServices _utilServices;
  final String token = CashData.getToken().toString();

  ApiServiceImp(this._utilServices);

  @override
  void onInit() {
    httpClient.baseUrl = 'http://shipment.fadiramzi.dev/api/mobile/v1';

    ///localhost - [http://192.168.1.7]
    httpClient.addRequestModifier((Request request) {
      request.headers['Accept'] = 'application/json';
      request.headers['Content-Type'] = 'application/json';

      return request;
    });
    httpClient.addAuthenticator((Request request) {
      final headers = {'Authorization': 'Bearer $token'};

      request.headers.addAll(headers);

      return request;
    });
  }

  @override
  Future<Response> login(LoginModel userData) async {
    final response = _errorHandler(await post('/auth/login', userData.toJson()));
    var data = LoginResponse.fromJson(response.body['data']);
    var token = data.token;
    debugPrint('token ===== $token');
    CashData.saveToken(token!);
    Get.to(()=> NavBarView());
    return response;
  }

  @override
  Future register(RegisterModel userData) async{
    final response = _errorHandler(await post('/auth/signup', userData.toJson()));
    var data = RegisterResponse.fromJson(response.body['data']);
    var otp = data.otp;

    _utilServices.messageSnackBar(
      title: 'message',
      message: '$otp',
    );
    Get.to(()=> const VerifyView());
  }

  @override
  Future<Response> verify(VerifyModel userData) async{
    final response = _errorHandler(await post('/auth/verify', userData.toJson()));
    Get.to(()=> const LoginView());
    return response;
  }


  @override
  Future<OtpModel?> forgetPassword(ResendPhoneModel phone) async{
    final response = _errorHandler(await post('/auth/forgetPassword', phone.toJson()));
    var data = OtpModel.fromJson(response.body['data']);
    var otp = data.otp;

    _utilServices.messageSnackBar(
      title: 'OTP Code',
      message: '$otp',
    );
    Get.to(()=> const OtpView());
    return null;
  }

  @override
  Future<Response> newPassword(NewPasswordModel userData) async{
    final response = _errorHandler(await post('/auth/newPassword', userData.toJson()));
    return response;
  }

  @override
  Future<Response> resendOtp(ResendPhoneModel phone) {
    // TODO: implement resendOtp
    throw UnimplementedError();
  }

  @override
  Future<Response> getAllOrders() async{
    final response = _errorHandler(await get('/order', headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer $token',}));
    var data = jsonDecode(response.body['data']);

    return data;
  }


  Response<dynamic> _errorHandler(Response response) {
    debugPrint(response.bodyString);
    switch (response.statusCode) {
      case null:
      case 200:
      case 202:
      case 204:
        return response;
      default:
        throw 'Unknown error!';
    }
  }

  @override
  Future<Response> create(FormData data) async{
    final response = _errorHandler(await post('/auth/login', data,));
    if(response.statusCode==201) {
      Get.snackbar('Successfully', 'New Profile Added',
          backgroundColor: Colors.white,
          duration: const Duration(seconds: 4),
          animationDuration: const Duration(milliseconds: 900),
          margin: const EdgeInsets.only(top: 5, left: 10, right: 10)
      );
    }
    return response;
  }

}