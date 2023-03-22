import 'dart:convert';
import '../../share/typedef.dart';




class NewPasswordModel {
  String new_password;
  String phone;
  String otp;

  NewPasswordModel({
    required this.new_password,
    required this.phone,
    required this.otp,
  });

    JSON toJson() {
      final map = <String, dynamic>{};
      map['new_password'] = new_password;
      map['phone'] = phone;
      map['otp'] = otp;
      return map;
    }
}