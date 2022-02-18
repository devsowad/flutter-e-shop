import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

import '../../../components/default_button.dart';
import '../../../components/suffix_icon.dart';
import '../../../size_config.dart';

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({Key? key}) : super(key: key);

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  late final String email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        buildEmailFormField(),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        DefaultButton(
          text: 'CONTINUE',
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
            }
          },
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
      ]),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue!,
      validator: ValidationBuilder().email().maxLength(50).build(),
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        hintText: 'Enter your email',
        labelText: 'Email',
        suffixIcon: SuffixIcon(svgSrc: 'assets/icons/mail.svg'),
      ),
    );
  }
}
