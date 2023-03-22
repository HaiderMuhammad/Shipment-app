import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shipment_app/app/modules/auth/views/register/widgets/user_form.dart';
import '../../../../../widgets/custom_button.dart';
import '../../../controllers/auth/register_controller.dart';
import '../../login/login_view.dart';



class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  final RegisterController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60.h,),
            Center(
              child: Text(
                "Sign up",
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 50.h,),
            const UserForm(),
            SizedBox(height: 50.h,),
            CustomButton(
                width: 1.sw,
                height: 54.h,
                text: 'Sign up',
                onTap: () async{
                  authController.checkRegisterValidator;
                  authController.register();

                  // authController.verifyPhone();
                  // Get.to(()=> const LoginView());
                  // authController.auth.verifyPhoneNumber(
                  //   phoneNumber: authController.userPhoneController.text,
                  //     verificationCompleted: (_) {},
                  //     verificationFailed: (e) {
                  //     Get.snackbar(
                  //       'error',
                  //       'You have add a correct number',
                  //       snackPosition: SnackPosition.BOTTOM,
                  //       duration: const Duration(seconds: 1),
                  //     );
                  //     },
                  //     codeSent: (String verificationId, int? token){
                  //     Get.to(()=> OtpView(verificationId: verificationId,));
                  //     },
                  //     codeAutoRetrievalTimeout: (e) {
                  //     Get.snackbar(
                  //       'time out error',
                  //       'You have add a correct number',
                  //       snackPosition: SnackPosition.BOTTOM,
                  //       duration: const Duration(seconds: 1),
                  //     );
                  //     }
                  // );
                }
            ),
          ],
        ),
      ),
    );
  }
}
