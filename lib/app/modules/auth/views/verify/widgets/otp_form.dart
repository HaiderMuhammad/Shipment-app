import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../controllers/auth/register_controller.dart';


class CustomOtp extends GetView<RegisterController> {
  const CustomOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      fieldWidth: 47.w,
      numberOfFields: 6,
      borderColor: Colors.blueAccent,
      showFieldAsBox: true,
      focusedBorderColor: Colors.blueAccent,
      onSubmit: (String otp) => controller.verifyController.text = otp,
    );
  }
}