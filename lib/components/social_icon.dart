import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';
import '../size_config.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    Key? key,
    required this.svgSrc,
  }) : super(key: key);

  final String svgSrc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: CircleAvatar(
        radius: getProportionateScreenWidth(25),
        backgroundColor: kAccentColor,
        child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            svgSrc,
            height: getProportionateScreenWidth(25),
          ),
        ),
      ),
    );
  }
}
