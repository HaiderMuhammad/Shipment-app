import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shipment_app/app/routes/app_pages.dart';



class CashData {
  static Future saveToken(String token) async{
    try{
      final SharedPreferences pref = await SharedPreferences.getInstance();
      await pref.setString('token', token);
    }
    catch(e){
      debugPrint('$e');
      rethrow;
    }
  }

  static Future<String?> getToken() async{
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String token = pref.getString('token').toString();
    return token;
  }

  static Future deleteToken() async{
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove('token');
    Get.offAllNamed( AppRoutes.login);
  }
}