import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shipment_app/app/modules/auth/views/login/login_view.dart';
import 'package:shipment_app/app/modules/auth/views/verify/widgets/otp_form.dart';
import '../../../../../widgets/custom_button.dart';
import '../../../../../widgets/custom_text.dart';
import '../../../controllers/auth/register_controller.dart';
import '../../otp/widgets/otp_text.dart';


class VerifyBody extends GetView<RegisterController> {
  const VerifyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 100.h),
            child: CustomText(
                textAlign: TextAlign.center,
                text: 'Enter the 5 digit code sent to your Phone number',
                fontWeight: FontWeight.bold,
                fontSize: 18.sp
            ),
          ),
          SizedBox(height: 100.h,),
          const CustomOtp(),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomButton(
              topMargin: 200.h,
              rightMargin: 15.w,
              leftMargin: 15.w,
              width: 1.sw,
              height: 54.h,
              text: 'Send',
              onTap:() async{
                controller.verify();
              },
            ),
          ),
        ],
      ),
    );
  }
}