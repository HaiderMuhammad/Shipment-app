import 'package:shipment_app/app/data/models/new_password.dart';
import 'package:shipment_app/app/data/models/register.dart';
import 'package:shipment_app/app/data/models/verify.dart';
import '../models/login.dart';
import '../models/order/all_orders.dart';
import '../models/resend_phone.dart';





abstract class Repository {
  Future login(LoginModel userData);
  Future register(RegisterModel userData);
  Future verify(VerifyModel userData);
  Future forgetPassword(ResendPhoneModel userPhone);
  Future newPassword(NewPasswordModel userPhone);
  Future<List<OrderModel>?> getAllOrders();
}