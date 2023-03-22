import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shipment_app/app/modules/new_order/views/widgets/new_order_form.dart';
import 'package:shipment_app/app/modules/new_order/views/widgets/upload_img_widget.dart';
import '../../../../widgets/custom_button.dart';



class NewOrderBody extends StatelessWidget {
  const NewOrderBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const NewOrderForm(),
            const UploadImg(),
            CustomButton(
              topMargin: 90.h,
              bottomMargin: 30.h,
              width: 1.sw,
              height: 54.h,
              text: 'Create',
            ),
          ],
        ),
      )
    );
  }
}
