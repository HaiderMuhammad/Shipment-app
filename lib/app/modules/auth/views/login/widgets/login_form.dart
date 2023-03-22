import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shipment_app/app/modules/auth/controllers/auth/login_controller.dart';
import '../../../../../widgets/custom_text_field.dart';




class LoginForm extends GetView<LoginController> {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.loginFormKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // CustomText(
          //     text: "Phone number",
          //     fontSize: 15.sp,
          //     fontWeight: FontWeight.w600,
          //     color: const Color(0xff464646),
          //     height: 4.h,
          // ),
          // IntlPhoneField(
          //   controller: controller.loginPhoneController,
          //   decoration: InputDecoration(
          //     errorBorder: const OutlineInputBorder(
          //         borderSide: BorderSide(width: 1 , color: Colors.redAccent )),
          //     focusedErrorBorder: const OutlineInputBorder(
          //         borderSide: BorderSide(width: 1 , color: Colors.redAccent )),
          //     focusedBorder: const OutlineInputBorder(
          //         borderSide: BorderSide(width: 1 , color: Colors.blueAccent )),
          //     enabledBorder: const OutlineInputBorder(
          //         borderSide: BorderSide(width: 1 , color: Colors.black87 )
          //     ),
          //     contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
          //   ),
          //   initialCountryCode: 'IQ',
          //   autovalidateMode: AutovalidateMode.onUserInteraction,
          //   showCountryFlag: false,
          // ),
          CustomTextField(
            controller: controller.loginPhoneController,
            obscureText: false,
            title: "Phone",
            titleHeight: 3.h,
            maxLines: 1,
          ),
          CustomTextField(
            controller: controller.loginPasswordController,
            obscureText: true,
            title: "Password",
            titleHeight: 3.h,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
