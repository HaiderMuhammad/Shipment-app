import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shipment_app/app/data/services/local/shared_preferences.dart';
import 'package:shipment_app/app/di/app_locator.dart';
import 'package:shipment_app/app/modules/navbar/views/navbar_view.dart';
import 'package:shipment_app/app/modules/splash_screen/bindings/splash_binding.dart';
import 'package:shipment_app/app/routes/app_pages.dart';
import 'app/modules/splash_screen/view/splash_view.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  AppLocator.init();
  debugPrint('${await CashData.getToken()}');

  runApp(
      ScreenUtilInit(
        designSize: const Size(348, 753),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            smartManagement: SmartManagement.keepFactory,
              title: 'Shipment',
              initialBinding: SplashBinding(),
              getPages: AppPages.pages,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: NavBarView()
          );
        },
      )
  );
}


