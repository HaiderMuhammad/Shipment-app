import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shipment_app/app/widgets/custom_text.dart';



class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key,
    required this.height,
    required this.width,
    this.onTap,
    required this.text,
    this.prefixIcon,
    required this.color,
    this.topMargin, this.bottomMargin}) : super(key: key);

  final double height;
  final double width;
  final Function()? onTap;
  final String text;
  final Widget? prefixIcon;
  final Color color;
  final double? topMargin;
  final double? bottomMargin;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 15.w),
        margin: EdgeInsets.only(top: topMargin?? 0, bottom: bottomMargin?? 0),
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius:1,
              blurRadius: 13,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
                text: text,
                fontWeight: FontWeight.normal,
                fontSize: 18.sp
            ),
            IconButton(
                onPressed: () {},
                icon: prefixIcon?? Icon(Icons.add, size: 0.h, ) )
          ],
        ),
      ),
    );
  }
}

