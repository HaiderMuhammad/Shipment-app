import 'package:flutter/material.dart';
import 'package:shipment_app/app/widgets/custom_text.dart';


class CustomRowText extends StatelessWidget {
  const CustomRowText({Key? key,
    required this.text1,
    required this.text2,
    required this.mainAxisAlignment,
    required this.fontWeight1,
    required this.fontSize1,
    this.color1,
    required this.fontWeight2,
    required this.fontSize2,
    this.color2, this.height1, this.height2
  }) : super(key: key);

  final String text1;
  final String text2;
  final FontWeight fontWeight1;
  final double fontSize1;
  final Color? color1;
  final FontWeight fontWeight2;
  final double fontSize2;
  final Color? color2;
  final MainAxisAlignment mainAxisAlignment;
  final double? height1;
  final double? height2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(
          text1,
          style: TextStyle(
            fontSize: fontSize1,
            fontWeight: fontWeight1,
            color: color1,
            height: height1
          ),
        ),
        Text(
          text2,
          style: TextStyle(
              fontSize: fontSize2,
              fontWeight: fontWeight2,
              color: color2,
              height: height2
          ),
        ),
      ],
    );
  }
}
