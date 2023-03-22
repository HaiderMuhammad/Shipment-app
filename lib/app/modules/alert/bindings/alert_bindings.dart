import 'package:get/get.dart';
import '../controller/alert_controller.dart';


class AlertBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AlertController>(() => AlertController());
  }
}