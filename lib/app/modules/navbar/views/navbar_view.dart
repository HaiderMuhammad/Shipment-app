import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../alert/views/alert_view.dart';
import '../../home/views/home_view.dart';
import '../../new_order/views/newOrder_view.dart';
import '../../profile/views/profile_view.dart';
import '../controllers/navbar_controller.dart';
import 'package:iconsax/iconsax.dart';



class NavBarView extends GetView<NavBarController> {
  NavBarView({Key? key}) : super(key: key);
  final pages = [
    const HomeView(),
    const AlertView(),
    const NewOrderView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(()=>
        Scaffold(
          body: IndexedStack(
            index: controller.selectedIndex.value,
            children: pages,
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) => controller.changeIndex(index),
            currentIndex: controller.selectedIndex.value,
            selectedItemColor: const Color(0xff4AA3F5),
            showUnselectedLabels: false,
            showSelectedLabels: false,
            unselectedItemColor: Colors.black54,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Iconsax.cards5, size: 26.w,),
                label: "",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Iconsax.sms_notification5, size: 26.w,),
                  label: "Alert"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Iconsax.add_square5, size: 25.w,),
                  label: "New Order"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Iconsax.profile_tick5, size: 25.w,),
                  label: "Profile"
              )
            ],
          ),
        ),
    );
  }
  }