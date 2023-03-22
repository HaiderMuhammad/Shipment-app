import 'package:get/get.dart';
import 'package:shipment_app/app/data/models/new_password.dart';
import 'package:shipment_app/app/data/models/otp.dart';
import 'package:shipment_app/app/data/models/register.dart';
import 'package:shipment_app/app/data/models/resend_phone.dart';
import 'package:shipment_app/app/data/models/verify.dart';
import '../../../models/login.dart';





abstract class ApiService {
  Future register(RegisterModel userData);
  Future<Response> login(LoginModel userData);
  Future<Response> verify(VerifyModel userData);
  Future<Response> resendOtp(ResendPhoneModel phone);
  Future<OtpModel?> forgetPassword(ResendPhoneModel phone);
  Future<Response> newPassword(NewPasswordModel userData);
  Future<Response> getAllOrders();
  Future<Response> create(FormData data);
}