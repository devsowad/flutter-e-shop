import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);
  static String routeName = '/otp';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'OTP Verification',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: const Body(),
    );
  }
}
