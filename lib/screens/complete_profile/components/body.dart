import 'package:flutter/material.dart';

import '../../../components/account_screen_header.dart';
import '../../../size_config.dart';
import 'complete_profile_form.dart';

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
                  title: 'Complete Profile',
                  description: 'Please let us know a little bit about yourself',
                ),
                const CompleteProfileForm(),
                SizedBox(height: getProportionateScreenWidth(10)),
                Text(
                  "By continuing, you agree to our Terms of Service and Privacy Policy",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: getProportionateScreenWidth(16)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
