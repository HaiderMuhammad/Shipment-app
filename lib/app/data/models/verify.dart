import '../../share/typedef.dart';



class VerifyModel {
  String phone;
  String otp;

  VerifyModel({
    required this.phone,
    required this.otp,
  });

  JSON toJson() {
    final map = <String, dynamic>{};
    map['phone'] = phone;
    map['otp'] = otp;
    return map;
  }

}