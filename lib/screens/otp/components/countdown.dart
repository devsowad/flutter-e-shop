import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class Countdown extends StatefulWidget {
  const Countdown({Key? key}) : super(key: key);

  @override
  State<Countdown> createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30;

  @override
  Widget build(BuildContext context) {
    return CountdownTimer(
      endTime: endTime,
      widgetBuilder: builderCountdownTimer,
    );
  }
}

Widget builderCountdownTimer(BuildContext context, CurrentRemainingTime? time) {
  if (time == null) {
    return Text(
      'This code has expired',
      style: TextStyle(
        fontSize: getProportionateScreenWidth(15),
        color: kErrorColor,
      ),
    );
  }
  String value = '';
  if (time.days != null) {
    var days = _getNumberAddZero(time.days!);
    value = '$value$days days ';
  }
  var hours = _getNumberAddZero(time.hours ?? 0);
  value = '$value$hours:';
  var min = _getNumberAddZero(time.min ?? 0);
  value = '$value$min:';
  var sec = _getNumberAddZero(time.sec ?? 0);
  value = '$value$sec';
  return Text(
    'This code will expired in $value',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: kPrimaryColor,
      fontSize: getProportionateScreenWidth(15),
    ),
    // style: textStyle,
  );
}

String _getNumberAddZero(int number) {
  if (number < 10) {
    return "0" + number.toString();
  }
  return number.toString();
}
