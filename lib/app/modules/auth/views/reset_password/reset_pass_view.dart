import 'package:flutter/material.dart';
import 'package:shipment_app/app/modules/auth/views/reset_password/widgets/Reset_body.dart';



class ResetPassView extends StatelessWidget {
  const ResetPassView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ResetBody(),
      ),
    );
  }
}
