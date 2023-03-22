import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/validators.dart';
import '../../../../../widgets/custom_text_field.dart';
import '../../../controllers/auth/register_controller.dart';



class UserForm extends GetView<RegisterController> {
  const UserForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.userFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            controller: controller.userFullNameController,
            title: "Full name",
            titleHeight: 4.h,
            maxLines: 1,
            validator: Validators.userName,
          ),
          CustomTextField(
            controller: controller.userEmailController,
            title: "Email",
            titleHeight: 4.h,
            maxLines: 1,
            validator: Validators.email,
          ),
          CustomTextField(
            controller: controller.userPhoneController,
            title: "Phone",
            titleHeight: 4.h,
            maxLines: 1,
            validator: Validators.phoneNumber,
          ),
          // CustomText(
          //     text: "Phone number",
          //     fontSize: 15.sp,
          //     fontWeight: FontWeight.w600,
          //     color: const Color(0xff464646),
          //   height: 4.h,
          // ),
          // IntlPhoneField(
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
            controller: controller.userPassword1Controller,
            obscureText: true,
            title: "Password",
            titleHeight: 3.5.h,
            maxLines: 1,
            validator: Validators.password,
          ),
          CustomTextField(
            controller: controller.userPassword2Controller,
            obscureText: true,
            title: "Conform Password",
            titleHeight: 3.5.h,
            maxLines: 1,
            validator: Validators.password,
          ),
        ],
      ),
    );
  }
}
