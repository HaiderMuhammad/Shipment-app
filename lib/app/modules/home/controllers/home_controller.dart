import 'package:get/get.dart';
import '../../../data/models/order/all_orders.dart';
import '../../../data/repository/repository_imp.dart';
import '../../../utils/utilServices.dart';


class HomeController extends GetxController
    with StateMixin<List<OrderModel>>{

  final RepositoryImp _repository = Get.find();
  final utilServices = UtilServices();

  @override
  void onInit() {
    getOrders();

    super.onInit();
  }



  void getOrders() async{
    _repository.getAllOrders().then((data) {
      if (data == null) {
        change(data, status: RxStatus.empty());
        FormData formData = FormData({

        });
      } else {
        change(data, status: RxStatus.success());
      }
    }, onError: (error) {
      change(null, status: RxStatus.error());
    });
  }
}