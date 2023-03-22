import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../widgets/custom_button.dart';
import '../../../../../widgets/custom_text.dart';
import '../../../controllers/auth/register_controller.dart';
import '../../reset_password/reset_pass_view.dart';
import 'otp_text.dart';



class OtpBody extends StatelessWidget {
  OtpBody({Key? key}) : super(key: key);

  final RegisterController controller = Get.find();



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 100.h),
            child: CustomText(
                textAlign: TextAlign.center,
                text: 'Enter the 5 digit code sent to your Phone number',
                fontWeight: FontWeight.bold,
                fontSize: 18.sp
            ),
          ),
          SizedBox(height: 100.h,),
          const OtpText(),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomButton(
              topMargin: 200.h,
              leftMargin: 15.w,
              rightMargin: 15.w,
              width: 1.sw,
              height: 54.h,
              text: 'Send',
              // onTap:()=> Get.to(()=> const ResetPassView()),
            ),
          ),
        ],
      ),
    );
  }
}
