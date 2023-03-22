import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDashBord extends StatelessWidget {
  const CustomDashBord({Key? key,
    required this.text,
    this.onTap,
    required this.image}) : super(key: key);

  final String text;
  final Function()? onTap;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(image, height: 300.h,),
          Padding(
            padding: const EdgeInsets.only(bottom: 250),
            child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.sp,
                  color: Colors.white
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: onTap,
              child: Text(
                'Skip',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.sp
                ),
                textAlign: TextAlign.end,
              ),
            ),
          )
        ],
      ),
    );
  }
}