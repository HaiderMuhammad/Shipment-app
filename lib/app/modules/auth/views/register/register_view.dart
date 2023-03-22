import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/auth/register_controller.dart';
import 'widgets/body.dart';


class SignUpView extends GetView<RegisterController> {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}
