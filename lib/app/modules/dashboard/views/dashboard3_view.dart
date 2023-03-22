
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../auth/views/register/register_view.dart';
import '../widgets/custom_dashboard.dart';


class DashBord3View extends StatelessWidget {
  const DashBord3View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff466CFF),
      body: CustomDashBord(
        image: "assets/images/img3.svg",
        text: "Get notified when shipment arrive",
        onTap: ()=> Get.to(()=> const SignUpView()),
      ),
    );
  }
}
