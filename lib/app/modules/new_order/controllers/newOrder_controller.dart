import 'dart:io';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class NewOrderController extends GetxController {
  var selectedImagePath = ''.obs;

  // New Order controllers
  final GlobalKey<FormState> newOrderFormKey = GlobalKey<FormState>();
  final fullNameController = TextEditingController();
  final addressController = TextEditingController();
  final productNameController = TextEditingController();
  final descriptionController = TextEditingController();
  final productCountController = TextEditingController();
  final productSizeController = TextEditingController();
  final productColorController = TextEditingController();
  final locationController = TextEditingController();
  final linksController = TextEditingController();

  @override
  void onInit() {

  }

  @override
  void onClose() {

  }

  @override
  void onReady() {

  }

  void getImage(ImageSource imageSource) async{
    final pickedImage = await ImagePicker().pickImage(source: imageSource);
    if(pickedImage != null) {
      selectedImagePath.value = pickedImage.path;
      debugPrint(selectedImagePath.value);
    }
    else{
      Get.snackbar('error', 'No image selected', snackPosition: SnackPosition.TOP);
    }
  }
}