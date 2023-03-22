import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../utils/validators.dart';
import '../../../../../widgets/custom_text_field.dart';
import '../../../controllers/auth/forget_password.dart';



class ForgetForm extends GetView<ForgetPasswordController> {
  const ForgetForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: controller.forgetPasswordController,
      title: "Phone",
      hintText: "Enter phone number",
      maxLines: 1,
      titleHeight: 4.h,
      textInputType: TextInputType.number,
      validator: Validators.phoneNumber,
    );
  }
}