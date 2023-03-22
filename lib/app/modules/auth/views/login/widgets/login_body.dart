import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shipment_app/app/modules/auth/controllers/auth/login_controller.dart';
import '../../../../../widgets/custom_button.dart';
import '../../../../../widgets/custom_text.dart';
import '../../forget_pass_view/forget_pass_view.dart';
import 'login_form.dart';



class LoginBody extends StatelessWidget {
  LoginBody({Key? key}) : super(key: key);
  final LoginController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80.h,),
            CustomText(
              text: 'Welcome Back',
              fontSize: 25.sp,
              color: Colors. black87,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 50.h,),
            const LoginForm(),
            Align(
              alignment: Alignment.centerRight,
              child: CustomText(
                onTap: ()=> Get.to(()=> const ForgetPassView()),
                text: 'Forgot password?',
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
                color: Colors.blueAccent,
                height: 3.h,
              ),
            ),
            CustomButton(
              topMargin: 26.h,
              bottomMargin: 15.h,
              width: 1.sw,
              height: 54.h,
              text: 'Login',
              onTap: () async {
                authController.checkLoginValidator();
                authController.login();
              },
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Dont’t have an account? ',
                  fontWeight: FontWeight.w600,
                  fontSize: 12.sp,
                  color: Colors.black87,
                  height: 3.h,
                ),
                CustomText(
                  text: 'Sign up',
                  fontWeight: FontWeight.w600,
                  fontSize: 12.sp,
                  color: Colors.blueAccent,
                  height: 3.h,
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
