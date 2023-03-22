import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';



class SplashController extends GetxController {

  @override
  void onReady() {
    _init();
  }

  Future<void> _init() async {
    await Future.delayed(const Duration(seconds: 2)
    );
  }
  }