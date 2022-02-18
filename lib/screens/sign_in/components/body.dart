import 'package:e_shop/constant.dart';
import 'package:flutter/material.dart';

import '../../../components/social_icon.dart';
import '../../../size_config.dart';
import 'form.dart';

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
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Welcome Back",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: getProportionateScreenWidth(28),
                      ),
                ),
                const Text(
                  'Sign in with your email and password \nor continue with your social media account',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const SignInForm(),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style:
                          TextStyle(fontSize: getProportionateScreenWidth(16)),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: getProportionateScreenWidth(16),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
