import 'package:get/get.dart';
import 'package:shipment_app/app/modules/dashboard/controllers/dashboard_controllers.dart';



class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
  }

}