import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shipment_app/app/data/models/new_password.dart';
import '../../../../data/models/resend_phone.dart';
import '../../../../data/repository/repository_imp.dart';
import '../../../../utils/utilServices.dart';




class ForgetPasswordController extends GetxController {
  final RepositoryImp _authRepository = Get.find();
  final utilServices = UtilServices();


  // Forget Password Controllers
  final forgetPasswordController = TextEditingController();
  final otpController = TextEditingController();

  // New Password Controllers
  final newPasswordController = TextEditingController();

  forgetPassword() {
    _authRepository.forgetPassword(
        ResendPhoneModel(
            phone: forgetPasswordController.text
        )
    );
  }

  newPassword() {
    _authRepository.newPassword(
      NewPasswordModel(
          new_password: newPasswordController.text,
          phone: forgetPasswordController.text,
          otp: otpController.text
      )
    );
  }
}