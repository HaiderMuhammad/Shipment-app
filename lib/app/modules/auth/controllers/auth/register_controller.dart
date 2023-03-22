import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shipment_app/app/data/models/register.dart';
import 'package:shipment_app/app/data/models/verify.dart';
import 'package:shipment_app/app/modules/auth/views/otp/otp_view.dart';
import 'package:shipment_app/app/utils/utilServices.dart';
import '../../../../data/repository/repository_imp.dart';



class RegisterController extends GetxController {
  final RepositoryImp _authRepository = Get.find();
  final utilServices = UtilServices();


  // Register controllers
  final GlobalKey<FormState> userFormKey = GlobalKey<FormState>();
  final userFullNameController = TextEditingController();
  final userPhoneController = TextEditingController();
  final userEmailController = TextEditingController();
  final userPassword1Controller = TextEditingController();
  final userPassword2Controller = TextEditingController();
  final String _userType = 'customer';

  // Verify controller
  final verifyController = TextEditingController();



  void checkRegisterValidator() {
    final isValid = userFormKey.currentState!.validate();
    if(!isValid) {
      return;
    }
    userFormKey.currentState!.save();
    Get.to(()=> const OtpView());
  }


  register()  {
    _authRepository.register(
        RegisterModel(
            name: userFullNameController.text,
            email: userEmailController.text,
            phone: userPhoneController.text,
            password: userPassword1Controller.text,
            c_password: userPassword2Controller.text,
            user_type: _userType
        )
    );
  }

  verify() {
    _authRepository.verify(
        VerifyModel(
            phone: userPhoneController.text,
            otp: verifyController.text
        )
    );
  }
}