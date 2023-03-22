import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';



class UtilServices {
  messageSnackBar({required String title,required String message}){
    Get.snackbar(title, message);
  }

  Future<bool> showDialogToChoose({required String message}) async {
    return await Get.dialog(
      barrierDismissible: false,
      AlertDialog(
        content: Text(
          message,
          textAlign: TextAlign.justify,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
        ),
        actions: [
          TextButton(
              onPressed: () => Get.back(result: false),
              child: const Text('Cancel')),
          TextButton(
            onPressed: () => Get.back(result: true),
            child: const Text('Confirm'),
          ),
        ],
      ),
    );
  }

  Future<void> showAlertDialog({
    required String message,
    String? route,
    String? routeMessage,
    bool barrierDismissible = false,
    int arguments = 0,
  }) async {
    return await Get.dialog(
      barrierDismissible: barrierDismissible,
      AlertDialog(
        content: Text(
          message,
          textAlign: TextAlign.left,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          if (route != null)
            TextButton(
              onPressed: () => Get.offAllNamed(route, arguments: arguments),
              child: Text(routeMessage ?? ''),
            )
        ],
      ),
    );
  }
}