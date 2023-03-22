import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shipment_app/app/modules/auth/views/forget_pass_view/widgets/forget_body.dart';


class ForgetPassView extends StatelessWidget {
  const ForgetPassView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(onPressed: ()=> Get.back(),
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
            size: 20.w,
          ),
          ),
        ),
        body: ForgetBody(),
      ),
    );
  }
}
