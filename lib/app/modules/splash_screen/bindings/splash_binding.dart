import 'package:get/get.dart';
import 'package:shipment_app/app/modules/auth/controllers/auth/login_controller.dart';
import 'package:shipment_app/app/modules/auth/controllers/auth/register_controller.dart';
import 'package:shipment_app/app/modules/navbar/controllers/navbar_controller.dart';
import '../../home/controllers/tapbar_controller.dart';
import '../../new_order/controllers/newOrder_controller.dart';
import '../../profile/controllers/profile_controller.dart';
import '../controller/splash_controller.dart';



class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController(), fenix: true,);
    Get.lazyPut<RegisterController>(() => RegisterController(), fenix: true,);
    Get.lazyPut<LoginController>(() => LoginController(), fenix: true,);
    Get.lazyPut<NavBarController>(() => NavBarController(), fenix: true,);
    Get.lazyPut<ProfileController>(() => ProfileController(), fenix: true);
    Get.lazyPut<NewOrderController>(() => NewOrderController(), fenix: true);
    Get.lazyPut<MyTabController>(() => MyTabController(), fenix: true);
  }
}
// +9647729222273