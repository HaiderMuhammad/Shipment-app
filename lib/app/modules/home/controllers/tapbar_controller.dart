import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyTabController extends GetxController with GetSingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'My Orders'),
    const Tab(text: 'Pending'),
    const Tab(text: 'Arrived'),
  ];

  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}