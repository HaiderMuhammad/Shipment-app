import 'package:flutter/material.dart';
import 'package:shipment_app/app/modules/auth/views/verify/widgets/body.dart';

import '../otp/widgets/otp_body.dart';



class VerifyView extends StatelessWidget {
  const VerifyView({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: VerifyBody(),
      ),
    );
  }
}