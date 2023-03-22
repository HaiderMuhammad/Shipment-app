import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';
import 'package:shipment_app/app/data/services/local/shared_preferences.dart';


class AuthMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    String token = CashData.getToken() as String;
    if(token.isNotEmpty) {
      return const RouteSettings(name: "/navBar");
    }
    return null;
  }
}