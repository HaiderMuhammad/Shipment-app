import 'package:get/get.dart';
import 'package:shipment_app/app/modules/order_details/controllers/order_detail_controller.dart';




class OrderDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderDetailController>(() => OrderDetailController());
  }
}
