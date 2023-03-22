class OtpModel {
  String? otp;

  OtpModel({
    required this.otp,
  });

  OtpModel.fromJson(dynamic json) {
    otp = json['otp'];
  }
}