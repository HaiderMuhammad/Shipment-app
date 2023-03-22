import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shipment_app/app/modules/auth/controllers/auth/forget_password.dart';
import 'package:shipment_app/app/modules/auth/views/reset_password/widgets/reset_form.dart';
import '../../../../../widgets/custom_button.dart';
import '../../../../../widgets/custom_text.dart';




class ResetBody extends GetView<ForgetPasswordController> {
  const ResetBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 80.h,),
            CustomText(
              text: 'Reset Password',
              fontSize: 25.sp,
              color: Colors. black87,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 80.h,),
            const ResetForm(),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomButton(
                onTap: () async{
                  controller.newPassword();
                },
                width: 1.sw,
                height: 54.h,
                topMargin: 175.h,
                text: 'Reset',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
