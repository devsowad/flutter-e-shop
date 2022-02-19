import 'package:e_shop/constant.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.bgColor = kPrimaryColor,
    this.elevation = 10,
    this.color = Colors.white,
  }) : super(key: key);

  final String text;
  final Color bgColor;
  final double elevation;
  final Color color;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(bgColor),
          elevation: MaterialStateProperty.all<double>(elevation),
        ),
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: color,
          ),
        ),
      ),
    );
  }
}
