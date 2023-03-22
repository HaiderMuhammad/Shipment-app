import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../data/models/login.dart';
import '../../../../data/repository/repository_imp.dart';
import '../../../../utils/utilServices.dart';




class LoginController extends GetxController{
  final RepositoryImp _authRepository = Get.find();
  final utilServices = UtilServices();


  // Login controllers
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final loginPhoneController = TextEditingController();
  final loginPasswordController = TextEditingController();


  void checkLoginValidator() {
    final isValid = loginFormKey.currentState!.validate();
    if(!isValid) {
      return;
    }
    loginFormKey.currentState!.save();
  }

  login()  {
    _authRepository.login(
        LoginModel(
          phone: loginPhoneController.text,
          password: loginPasswordController.text,
        ),
    );
  }
}