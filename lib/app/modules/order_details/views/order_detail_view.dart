import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shipment_app/app/modules/order_details/controllers/order_detail_controller.dart';
import 'package:shipment_app/app/modules/order_details/views/widgets/order_details_body.dart';
import 'package:shipment_app/app/widgets/custom_text.dart';


class OrderDetailView extends GetView<OrderDetailController> {
  const OrderDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: ()=> Get.back(),
          icon: Icon(Icons.arrow_back_ios_new_rounded, size: 20.w, color: Colors.black,),
        ),
        title: CustomText(
          text: 'Order Detail',
          fontSize: 24.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        )
      ),
      body: const OrderDetailBody(),
    );
  }
}
