class LoginResponse {
  int? id;
  String? email;
  String? phone;
  String? token;

  LoginResponse({
    this.id,
    this.phone,
    this.email,
    this.token,
  });

  LoginResponse.fromJson(dynamic json) {
    id = json['id'];
    phone = json['phone'];
    email = json['email'];
    token = json['token'];

  }
}