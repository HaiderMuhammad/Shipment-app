import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpText extends StatelessWidget {
  const OtpText({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      fieldWidth: 47.w,
      numberOfFields: 6,
      borderColor: Colors.blueAccent,
      showFieldAsBox: true,
      focusedBorderColor: Colors.blueAccent,
      onSubmit: (String otp) {},
    );
  }
}
