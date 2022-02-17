import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.imgSrc,
  }) : super(key: key);

  final String text, imgSrc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          'TOKOTO',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text, textAlign: TextAlign.center),
        const Spacer(flex: 2),
        Image.asset(
          imgSrc,
          width: getProportionateScreenWidth(235),
          height: getProportionateScreenWidth(265),
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
