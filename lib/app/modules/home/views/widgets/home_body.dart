import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shipment_app/app/modules/home/views/widgets/tapBar.dart';
import 'order_cart_widget.dart';


class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyTapBar(),
        SizedBox(height: 32.h,),
        const OrderCart(),
      ],
    );
  }
}
