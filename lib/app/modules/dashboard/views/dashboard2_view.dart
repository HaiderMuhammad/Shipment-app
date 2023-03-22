import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/custom_dashboard.dart';
import 'dashboard3_view.dart';


class DashBord2View extends StatelessWidget {
  const DashBord2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFAB37),
      body: CustomDashBord(
        image: "assets/images/img2.svg",
        text: "Track your shipment anytime, any where",
        onTap: ()=> Get.to(()=> const DashBord3View()),
      ),
    );
  }
}