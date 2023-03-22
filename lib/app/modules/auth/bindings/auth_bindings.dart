import 'package:get/get.dart';
import 'package:shipment_app/app/modules/auth/controllers/auth/forget_password.dart';
import 'package:shipment_app/app/modules/auth/controllers/auth/login_controller.dart';
import 'package:shipment_app/app/modules/new_order/controllers/newOrder_controller.dart';
import '../../home/controllers/tapbar_controller.dart';
import '../../navbar/controllers/navbar_controller.dart';
import '../controllers/auth/register_controller.dart';


class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
    Get.put<LoginController>(LoginController());
    Get.put<ForgetPasswordController>(ForgetPasswordController());
  }

}