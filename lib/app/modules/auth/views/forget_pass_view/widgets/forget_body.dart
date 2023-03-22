import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../widgets/custom_button.dart';
import '../../../../../widgets/custom_text.dart';
import '../../../controllers/auth/forget_password.dart';
import 'forget_form.dart';




class ForgetBody extends StatelessWidget {
  ForgetBody({Key? key}) : super(key: key);
  final ForgetPasswordController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child:  Column(
          children: [
            SizedBox(height: 80.h,),
            CustomText(
              textAlign: TextAlign.center,
              text: 'Lorem Ipsum is simply dummy text of the printing ',
              fontSize: 18.sp,
              color: Colors. black87,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 80.h,),
            const ForgetForm(),
            CustomButton(
              onTap: () async{
                controller.forgetPassword();
              },
              topMargin: 215.h,
              width: 1.sw,
              height: 54.h,
              text: 'Send',
              // onTap:()=> Get.to(()=> const OtpView()),
            ),
          ],
        ),
      ),
    );
  }
}
