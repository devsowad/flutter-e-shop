import 'package:flutter/material.dart';

import '../../../components/auth_screen_header.dart';
import '../../../components/has_account.dart';
import '../../../components/social_icon.dart';
import '../../../size_config.dart';
import 'sign_up_form.dart';

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
                  title: 'Register Account',
                  description:
                      'Complete your details or continue \nwith social media',
                ),
                const SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SocialIcon(svgSrc: 'assets/icons/google.svg'),
                    SocialIcon(svgSrc: 'assets/icons/facebook_2.svg'),
                    SocialIcon(svgSrc: 'assets/icons/twitter.svg'),
                  ],
                ),
                SizedBox(height: getProportionateScreenWidth(10)),
                const HasAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
