import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shipment_app/app/modules/new_order/controllers/newOrder_controller.dart';
import 'package:shipment_app/app/widgets/custom_text.dart';


class CustomBottomSheet extends StatelessWidget {
  CustomBottomSheet({Key? key}) : super(key: key);
  final NewOrderController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      width: 1.sw,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
              text: 'Choose profile image',
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                  onPressed: () {
                    // controller.getImage(ImageSource.camera);
                  },
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.photo_camera, size: 25.w,),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomText(
                          text: 'Camera',
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp
                      ),
                    ],
                  )),
              Container(
                width: 1.w,
                height: 35.h,
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                color: Colors.black,
              ),
              MaterialButton(
                  onPressed: () {
                    controller.getImage(ImageSource.gallery);
                  },
                  child: Row(
                    children: [
                      const Icon(
                          CupertinoIcons.photo
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CustomText(
                          text: 'Gallery',
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp
                      ),
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
