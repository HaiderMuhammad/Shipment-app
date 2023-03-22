import 'package:get/get.dart';
import 'package:shipment_app/app/modules/home/controllers/home_controller.dart';
import 'package:shipment_app/app/utils/utilServices.dart';
import '../data/repository/repository_imp.dart';
import '../data/services/remote/api/api_service.dart';
import '../data/services/remote/api/api_service_imp.dart';




class AppLocator {

  static init() async{
    Get.put<UtilServices>(UtilServices(), permanent: true);
    Get.put<ApiService>(ApiServiceImp(Get.find()), permanent: true);
    Get.put<RepositoryImp>(RepositoryImp(Get.find()), permanent: true);
    Get.put<HomeController>(HomeController(),permanent: true);
  }
}