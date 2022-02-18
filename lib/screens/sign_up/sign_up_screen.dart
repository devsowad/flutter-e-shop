import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'components/body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String routeName = '/sign_up';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: const Body(),
    );
  }
}
