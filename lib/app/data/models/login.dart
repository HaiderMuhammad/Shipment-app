import 'dart:core';
import 'package:shipment_app/app/share/typedef.dart';



class LoginModel {
  String phone;
  String password;

  LoginModel({
    required this.phone,
    required this.password,
  });

  JSON toJson() {
    final map = <String, dynamic>{};
    map['phone'] = phone;
    map['password'] = password;
    return map;
  }
}