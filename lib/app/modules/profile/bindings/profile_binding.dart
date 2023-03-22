import 'package:get/get.dart';
import 'package:shipment_app/app/modules/auth/controllers/auth/login_controller.dart';
import '../controllers/profile_controller.dart';



class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}