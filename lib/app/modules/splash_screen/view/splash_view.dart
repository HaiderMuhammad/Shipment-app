import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shipment_app/app/modules/splash_screen/controller/splash_controller.dart';


class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {

    return GetBuilder<SplashController>(
      builder: (_) => Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SvgPicture.asset('assets/images/img3.svg'),
        ),
      ),
    );
  }
}







