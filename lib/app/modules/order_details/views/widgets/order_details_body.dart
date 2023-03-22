import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shipment_app/app/widgets/custom_button.dart';
import 'package:shipment_app/app/widgets/custom_row_text.dart';
import 'list_product_img.dart';


class OrderDetailBody extends StatelessWidget {
  const OrderDetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          const ListImg(),
          SizedBox(height: 20.h,),
          CustomRowText(
              mainAxisAlignment: MainAxisAlignment.start,
              text1: 'Order: ',
              height1: 3.h,
              fontWeight1: FontWeight.normal,
              fontSize1: 16.sp,
              text2: 'No238562312',
              height2: 3.h,
              fontWeight2: FontWeight.bold,
              fontSize2: 16.sp
          ),
          CustomRowText(
              mainAxisAlignment: MainAxisAlignment.start,
              text1: 'Date: ',
              fontWeight1: FontWeight.normal,
              fontSize1: 16.sp,
              height1: 3.h,
              text2: '30/12/2022',
              fontWeight2: FontWeight.bold,
              fontSize2: 16.sp,
              height2: 3.h,
          ),
          CustomRowText(
              mainAxisAlignment: MainAxisAlignment.start,
              text1: 'Quantity: ',
              fontWeight1: FontWeight.normal,
              fontSize1: 16.sp,
              height1: 3.h,
              text2: '50',
              fontWeight2: FontWeight.bold,
              fontSize2: 16.sp,
              height2: 3.h,
          ),
          CustomRowText(
              mainAxisAlignment: MainAxisAlignment.start,
              text1: 'Total Amount: ',
              fontWeight1: FontWeight.normal,
              fontSize1: 16.sp,
              height1: 3.h,
              text2: '\$150',
              fontWeight2: FontWeight.bold,
              fontSize2: 16.sp,
              height2: 3.h,
          ),
          // CustomRowText(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     text1: 'Status: ',
          //     height1: 3.h,
          //     fontWeight1: FontWeight.normal,
          //     fontSize1: 16.sp,
          //     text2: 'Pending',
          //     height2: 3.h,
          //     fontWeight2: FontWeight.bold,
          //     fontSize2: 16.sp
          // ),
          CustomButton(
            onTap: () {},
            topMargin: 140.h,
              text: 'Cancel',
              width: 1.sw,
              height: 50.h
          ),
        ],
      ),
    );
  }
}
