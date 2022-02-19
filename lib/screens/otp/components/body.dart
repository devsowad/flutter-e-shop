import 'package:flutter/material.dart';

import '../../../components/auth_screen_header.dart';
import '../../../components/default_button.dart';
import '../../../constant.dart';
import '../../../size_config.dart';
import '../../home/home_screen.dart';
import 'countdown.dart';
import 'otp_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                const AuthScreenHeader(
                  title: 'OTP Verification',
                  description:
                      'We sent an OTP to your email. Please enter the OTP to verify your account.',
                ),
                const Countdown(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const OtpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                DefaultButton(text: 'continue', onPressed: () {}),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, HomeScreen.routeName);
                  },
                  child: Text(
                    'Resend OTP',
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: getProportionateScreenWidth(16),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
