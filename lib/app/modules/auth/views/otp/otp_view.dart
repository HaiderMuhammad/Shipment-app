import 'package:flutter/material.dart';
import 'package:shipment_app/app/modules/auth/views/otp/widgets/otp_body.dart';


class OtpView extends StatelessWidget {
  const OtpView({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OtpBody(),
      ),
    );
  }
}
