import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shipment_app/app/modules/alert/views/widgets/alert_body.dart';
import '../../../widgets/custom_text.dart';
import '../controller/alert_controller.dart';


class AlertView extends GetView<AlertController> {
  const AlertView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: CustomText(
          text: 'Notifications',
          fontSize: 24.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      body: const AlertBody(),
    );
  }
}
