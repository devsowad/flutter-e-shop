import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({Key? key}) : super(key: key);
  static String routeName = '/login_success';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return const Scaffold(
      body: Body(),
    );
  }
}
