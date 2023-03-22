import 'dart:convert';

import '../../share/typedef.dart';



class RegisterModel {
  String name;
  String phone;
  String email;
  String password;
  String c_password;
  String user_type;

  RegisterModel({
    required this.email,
    required this.phone,
    required this.name,
    required this.password,
    required this.c_password,
    required this.user_type


  });

  JSON toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    map['phone'] = phone;
    map['password'] = password;
    map['c_password'] = c_password;
    map['user_type'] = user_type;

    return map;
  }
}