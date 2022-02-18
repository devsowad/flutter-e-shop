import 'package:flutter/material.dart';

import '../constant.dart';
import '../screens/sign_in/sign_in_screen.dart';
import '../size_config.dart';

class HasAccount extends StatelessWidget {
  const HasAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, SignInScreen.routeName);
          },
          child: Text(
            'Sign In',
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: getProportionateScreenWidth(16),
            ),
          ),
        ),
      ],
    );
  }
}
