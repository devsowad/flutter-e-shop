import 'package:form_validator/form_validator.dart';
import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../components/labeled_checkbox.dart';
import '../../../components/suffix_icon.dart';
import '../../../size_config.dart';
import '../../forgot_password/forgot_password_screen.dart';
import '../../login_success/login_success_screen.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  late final String email, password;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        buildEmailFormField(),
        SizedBox(height: getProportionateScreenWidth(20)),
        buildPasswordFormField(),
        SizedBox(height: getProportionateScreenWidth(20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LabeledCheckbox(
              label: 'Remember me',
              value: isSelected,
              onChanged: (value) => setState(() => isSelected = value),
            ),
            Flexible(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
                },
                child: const Text(
                  'Forgot Password?',
                  textAlign: TextAlign.right,
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        DefaultButton(
          text: 'CONTINUE',
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              // _formKey.currentState!.save();
              Navigator.pushReplacementNamed(
                context,
                LoginSuccessScreen.routeName,
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
}
