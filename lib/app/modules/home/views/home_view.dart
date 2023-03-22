import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shipment_app/app/modules/home/views/widgets/home_body.dart';
import '../controllers/home_controller.dart';


class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'My Orders',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.sp,
              color: Colors.black
          ),
        ),
      ),
      body: const HomeBody()
    );
  }
}
