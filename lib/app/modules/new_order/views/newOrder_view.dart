import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shipment_app/app/modules/new_order/views/widgets/new_order_body.dart';
import '../../../widgets/custom_text.dart';
import '../controllers/newOrder_controller.dart';


class NewOrderView extends GetView<NewOrderController> {
  const NewOrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: CustomText(
            text: 'New Order',
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
      ),
      body: const NewOrderBody(),
    );
  }
}
