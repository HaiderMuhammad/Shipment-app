import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:shipment_app/app/data/models/new_password.dart';
import 'package:shipment_app/app/data/models/register.dart';
import 'package:shipment_app/app/data/models/resend_phone.dart';
import 'package:shipment_app/app/data/models/verify.dart';
import 'package:shipment_app/app/data/repository/repository.dart';
import '../models/login.dart';
import '../models/order/all_orders.dart';
import '../services/remote/api/api_service.dart';



class RepositoryImp implements Repository{
  final ApiService _apiService;

  RepositoryImp(this._apiService);

  @override
  Future login(LoginModel userData) {
    return _apiService.login(userData);
  }

  @override
  Future register(RegisterModel userData) {
    return _apiService.register(userData);
  }

  @override
  Future verify(VerifyModel userData) {
    return _apiService.verify(userData);
  }

  @override
  Future forgetPassword(ResendPhoneModel userPhone) {
    return _apiService.forgetPassword(userPhone);
  }

  @override
  Future newPassword(NewPasswordModel userData) {
    return _apiService.newPassword(userData);
  }

  @override
  Future<List<OrderModel>?> getAllOrders() async{
    try{
      final response = await _apiService.getAllOrders();
      final data = (response.body as List).map((e) =>
          OrderModel.fromJson(e)).toList();
      return data;
    }
    catch(e) {
      debugPrint('$e');
    }
    return null;
  }


}