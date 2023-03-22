import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shipment_app/app/modules/order_details/views/order_detail_view.dart';
import 'package:shipment_app/app/widgets/custom_button.dart';
import 'package:shipment_app/app/widgets/custom_row_text.dart';
import 'package:shipment_app/app/widgets/custom_text.dart';


class OrderCart extends StatelessWidget {
  const OrderCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      padding: EdgeInsets.all(20.h),
      width: 300.w,
      height: 190.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius:1,
            blurRadius: 13,
            offset: const Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          CustomRowText(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              text1: 'Order No238562312',
              fontWeight1: FontWeight.bold,
              fontSize1: 16.sp,
              text2: '30/12/2022',
              fontWeight2: FontWeight.normal,
              fontSize2: 14.sp
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, bottom: 15.h),
            child: Divider(thickness: 0.3.h, color: Colors.black,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomRowText(
                  mainAxisAlignment: MainAxisAlignment.start,
                  text1: 'Quantity: ',
                  fontWeight1: FontWeight.normal,
                  fontSize1: 15.sp,
                  text2: '50',
                  fontWeight2: FontWeight.bold,
                  fontSize2: 15.sp
              ),
              CustomRowText(
                  mainAxisAlignment: MainAxisAlignment.start,
                  text1: 'Total Amount: ',
                  fontWeight1: FontWeight.normal,
                  fontSize1: 15.sp,
                  text2: '\$150',
                  fontWeight2: FontWeight.bold,
                  fontSize2: 15.sp
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomButton(
                onTap: ()=> Get.to(()=> const OrderDetailView()),
                topMargin: 25.h,
                width: 100.w,
                height: 40.h,
                text: 'Detail',
              ),
              CustomText(
                text: 'Pending',
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
                color: Colors.black,
                height: 2.5.h,
              )
            ],
          ),

        ],
      ),
    );
  }
}
