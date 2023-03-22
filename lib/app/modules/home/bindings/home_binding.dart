import 'package:get/get.dart';
import 'package:shipment_app/app/modules/home/controllers/tapbar_controller.dart';

import '../controllers/home_controller.dart';



class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
    Get.put<MyTabController>(MyTabController());

  }
}