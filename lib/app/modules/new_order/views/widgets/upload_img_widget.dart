import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shipment_app/app/modules/new_order/views/widgets/customButtomSheet.dart';
import '../../../../widgets/custom_text.dart';



class UploadImg extends StatelessWidget {
  const UploadImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.bottomSheet(CustomBottomSheet()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: 'Upload Image',
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xff464646),
            height: 4.5.h,
          ),
          Container(
            width: 1.sw,
            height: 55.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: const Color(0xffD8D8D8),
            ),
            child: Center(
              child: Icon(Icons.image, size: 35.h, color: Colors.black54,),
            ),
          )
        ],
      ),
    );
  }
}
