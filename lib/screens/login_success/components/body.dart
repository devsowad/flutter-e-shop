import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Image.asset(
            'assets/images/success.png',
            fit: BoxFit.contain,
          ),
          const Spacer(),
          Text(
            'Login Success',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: getProportionateScreenWidth(30)),
          ),
          const Spacer(),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.screenHeight * 0.1),
            child: DefaultButton(text: 'go to home', onPressed: () {}),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
