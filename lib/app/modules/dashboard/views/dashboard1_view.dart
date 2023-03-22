import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/custom_dashboard.dart';
import 'dashboard2_view.dart';



class DashBord1View extends StatelessWidget {
  const DashBord1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF7D5D),
      body: CustomDashBord(
        image: "assets/images/img1.svg",
        text: "Super fast and the shipping is on us",
        onTap: ()=> Get.to(()=> const DashBord2View()),
      ),
    );
  }
}
