import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shipment_app/app/modules/auth/controllers/auth/forget_password.dart';
import '../../../../../utils/validators.dart';
import '../../../../../widgets/custom_text_field.dart';



class ResetForm extends GetView<ForgetPasswordController> {
  const ResetForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          controller: controller.newPasswordController,
          title: "New Password",
          titleHeight: 0.h,
          maxLines: 1,
          textInputType: TextInputType.number,
          validator: Validators.password,
        ),
      ],
    );
  }
}
