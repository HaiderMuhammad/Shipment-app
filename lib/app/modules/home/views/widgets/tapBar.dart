import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import '../../controllers/tapbar_controller.dart';



class MyTapBar extends GetView<MyTabController> {
  const MyTapBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller.tabController,
      labelColor: Colors.black87,
      unselectedLabelColor: Colors.grey,
      tabs: controller.myTabs,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: MaterialIndicator(
        color: Colors.blueAccent,
        paintingStyle: PaintingStyle.fill,
        height: 5.h,
        topLeftRadius: 5.r,
        topRightRadius: 5.r,
        bottomLeftRadius: 5.r,
        bottomRightRadius: 5.r,
        tabPosition: TabPosition.bottom,
      ),
    );
  }
}
