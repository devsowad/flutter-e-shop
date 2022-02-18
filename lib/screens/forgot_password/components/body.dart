import 'package:flutter/material.dart';

import '../../../components/account_screen_header.dart';
import '../../../components/no_account.dart';
import '../../../size_config.dart';
import 'forgot_pass_form.dart';

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
                  title: 'Forgot Password',
                  description:
                      'Enter your email address and we will send \nyou a link to reset your password',
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const ForgotPassForm(),
                SizedBox(height: getProportionateScreenWidth(10)),
                const NoAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
