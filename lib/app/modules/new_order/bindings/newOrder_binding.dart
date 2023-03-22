import 'package:get/get.dart';
import '../controllers/newOrder_controller.dart';



class NewOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NewOrderController>(NewOrderController());
  }
}