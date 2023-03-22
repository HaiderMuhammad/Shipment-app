import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({Key? key,
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
            color: backgroundColor?? const Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(3.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius:1,
                blurRadius: 13,
                offset: const Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18.sp,
                  color: Colors.redAccent
              ),
            ),
          )
      ),
    );
  }
}
