import 'package:flutter/material.dart';
import 'package:shipment_app/app/modules/auth/views/login/widgets/login_body.dart';


class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LoginBody(),
      ),
    );
  }
}
