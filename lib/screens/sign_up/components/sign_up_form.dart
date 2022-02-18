import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

import '../../../components/default_button.dart';
import '../../../components/suffix_icon.dart';
import '../../../size_config.dart';
import '../../complete_profile/complete_profile_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  late final String email, password, confirmPassword;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        buildEmailFormField(),
        SizedBox(height: getProportionateScreenWidth(20)),
        buildPasswordFormField(),
        SizedBox(height: getProportionateScreenWidth(20)),
        buildConfirmPasswordFormField(),
        SizedBox(height: getProportionateScreenWidth(20)),
        DefaultButton(
          text: 'CONTINUE',
          onPressed: () {
            // _formKey.currentState!.save();
            if (_formKey.currentState!.validate()) {
              Navigator.pushReplacementNamed(
                context,
                CompleteProfileScreen.routeName,
              );
            }
          },
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

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue!,
      validator: ValidationBuilder().minLength(6).maxLength(20).build(),
      obscureText: true,
      decoration: const InputDecoration(
        hintText: 'Enter your password',
        labelText: 'Password',
        suffixIcon: SuffixIcon(svgSrc: 'assets/icons/lock.svg'),
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => confirmPassword = newValue!,
      validator: ValidationBuilder().minLength(6).maxLength(20).build(),
      obscureText: true,
      decoration: const InputDecoration(
        hintText: 'Re-enter your password',
        labelText: 'Confirm Password',
        suffixIcon: SuffixIcon(svgSrc: 'assets/icons/lock.svg'),
      ),
    );
  }
}
