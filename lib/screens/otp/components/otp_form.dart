import 'package:e_shop/constant.dart';
import 'package:flutter/services.dart';

import '../../../size_config.dart';
import 'package:flutter/material.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  final _formKey = GlobalKey<FormState>();
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: getProportionateScreenHeight(60),
            child: TextFormField(
              autofocus: true,
              maxLengthEnforcement: MaxLengthEnforcement.none,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24),
              decoration: otpInputDecoration(),
              onChanged: (value) =>
                  nextField(value: value, focusNode: pin2FocusNode),
            ),
          ),
          SizedBox(
            width: getProportionateScreenHeight(60),
            child: TextFormField(
              focusNode: pin2FocusNode,
              maxLengthEnforcement: MaxLengthEnforcement.none,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24),
              decoration: otpInputDecoration(),
              onChanged: (value) =>
                  nextField(value: value, focusNode: pin3FocusNode),
            ),
          ),
          SizedBox(
            width: getProportionateScreenHeight(60),
            child: TextFormField(
              focusNode: pin3FocusNode,
              maxLengthEnforcement: MaxLengthEnforcement.none,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24),
              decoration: otpInputDecoration(),
              onChanged: (value) =>
                  nextField(value: value, focusNode: pin4FocusNode),
            ),
          ),
          SizedBox(
            width: getProportionateScreenHeight(60),
            child: TextFormField(
              focusNode: pin4FocusNode,
              maxLengthEnforcement: MaxLengthEnforcement.none,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24),
              decoration: otpInputDecoration(),
              onChanged: (value) => {
                if (value.length == 1) {pin4FocusNode.unfocus()}
              },
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration otpInputDecoration() {
    return InputDecoration(
      contentPadding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(15),
      ),
      enabledBorder: otpBorder(),
      border: otpBorder(),
      focusedBorder: otpBorder(focused: true),
      // errorBorder: otpBorder(),
      // focusedErrorBorder: otpBorder(),
    );
  }

  OutlineInputBorder otpBorder({bool focused = false}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: focused ? kPrimaryColor : kTextColor),
    );
  }
}
