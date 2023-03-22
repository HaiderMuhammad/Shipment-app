import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomText extends StatelessWidget {
  const CustomText({Key? key,
    required this.text,
    required this.fontWeight,
    required this.fontSize,
    this.color,
    this.onTap,
    this.height, this.textAlign,
  }) : super(key: key);

  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color? color;
  final Function()? onTap;
  final double? height;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
            fontWeight: fontWeight,
            fontSize: fontSize,
            color: color,
            height: height
        ),
      ),
    );
  }
}
