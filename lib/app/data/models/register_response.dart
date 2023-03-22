class RegisterResponse {
  int? id;
  String? email;
  String? phone;
  String? otp;

  RegisterResponse({
    this.id,
    this.phone,
    this.email,
    this.otp,
  });

  RegisterResponse.fromJson(dynamic json) {
    id = json['id'];
    phone = json['phone'];
    email = json['email'];
    otp = json['otp'];
  }
}