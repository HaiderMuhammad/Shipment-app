import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shipment_app/app/data/services/local/shared_preferences.dart';
import 'package:shipment_app/app/modules/profile/controllers/profile_controller.dart';
import 'package:shipment_app/app/widgets/custom_text.dart';
import '../../../../routes/app_pages.dart';
import '../../../../widgets/custom_container.dart';
import 'logout_button.dart';



class ProfileBody extends StatelessWidget {
  ProfileBody({Key? key}) : super(key: key);
  final ProfileController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomText(
            text: 'Fadi Ramzi',
            fontWeight: FontWeight.bold,
            fontSize: 24.sp,
            color: Colors.blueAccent,
          ),
          CustomText(
            text: 'fadiramzi@gmail.com',
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
            color: Colors.grey,
          ),
          CustomContainer(
            topMargin: 60.h,
            height: 60.h,
            width: 1.sw,
            text: 'Edit Profile',
            color: Colors.white,
            prefixIcon: Icon(Icons.arrow_forward_ios_rounded, size: 20.h, color: Colors.black,),
          ),
          CustomContainer(
            topMargin: 32.h,
            bottomMargin: 32.h,
            height: 60.h,
            width: 1.sw,
            text: 'Shipping Address',
            color: Colors.white,
            prefixIcon: Icon(Icons.arrow_forward_ios_rounded, size: 20.h, color: Colors.black,),
          ),
          CustomContainer(
            height: 60.h,
            width: 1.sw,
            text: 'Settings',
            color: Colors.white,
            prefixIcon: Icon(Icons.arrow_forward_ios_rounded, size: 20.h, color: Colors.black,),
          ),
          LogoutButton(
            onTap: () async{
              await CashData.deleteToken();
            },
            topMargin: 80.h,
              text: 'Logout',
              width: 1.sw,
              height: 55.h
          )
        ],
      ),
    );
  }
}
