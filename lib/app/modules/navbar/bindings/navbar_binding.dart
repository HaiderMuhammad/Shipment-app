import 'package:get/get.dart';
import '../../alert/controller/alert_controller.dart';
import '../../home/controllers/home_controller.dart';
import '../../home/controllers/tapbar_controller.dart';
import '../../new_order/controllers/newOrder_controller.dart';
import '../../profile/controllers/profile_controller.dart';
import '../controllers/navbar_controller.dart';




class NavBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavBarController>(() => NavBarController(), fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<AlertController>(() => AlertController(), fenix: true);
    Get.lazyPut<ProfileController>(() => ProfileController(), fenix: true);
    Get.lazyPut<NewOrderController>(() => NewOrderController(), fenix: true);
    Get.lazyPut<MyTabController>(() => MyTabController(), fenix: true);



  }
}