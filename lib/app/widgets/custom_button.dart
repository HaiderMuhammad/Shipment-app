import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,
    required this.text,
    this.onTap,
    this.topMargin,
    this.bottomMargin,
    this.rightMargin,
    this.leftMargin, required this.width, required this.height, this.backgroundColor,
  }) : super(key: key);


  final String text;
  final double width;
  final double height;
  final Function()? onTap;
  final double? topMargin;
  final double? bottomMargin;
  final double? rightMargin;
  final double? leftMargin;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: width,
          height: height,
          margin: EdgeInsets.only(
            top: topMargin?? 0, bottom: bottomMargin?? 0,
            right: rightMargin?? 0, left: leftMargin?? 0,
          ),
          decoration: BoxDecoration(
            color: backgroundColor?? const Color(0xff4AA3F5),
            borderRadius: BorderRadius.circular(3.r),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                  color: Colors.white
              ),
            ),
          )
      ),
    );
  }
}
