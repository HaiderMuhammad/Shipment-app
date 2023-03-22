import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shipment_app/app/modules/home/views/widgets/order_cart_widget.dart';


class AlertBody extends StatelessWidget {
  const AlertBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30.h,),
        const OrderCart(),
      ],
    );
  }
}
