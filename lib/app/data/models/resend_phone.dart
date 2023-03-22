import 'dart:convert';
import '../../share/typedef.dart';




class ResendPhoneModel {
  String phone;

  ResendPhoneModel({
    required this.phone,
  });

  JSON toJson() {
    final map = <String, dynamic>{};
    map['phone'] = phone;
    return map;
  }
}