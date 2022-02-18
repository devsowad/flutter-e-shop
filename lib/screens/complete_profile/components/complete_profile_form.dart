import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

import '../../../components/default_button.dart';
import '../../../components/suffix_icon.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  late final String firstName, lastName, phoneNumber, address;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        buildFirstNameFormField(),
        SizedBox(height: getProportionateScreenWidth(20)),
        buildLastNameFormField(),
        SizedBox(height: getProportionateScreenWidth(20)),
        buildPhoneNumberFormField(),
        SizedBox(height: getProportionateScreenWidth(20)),
        buildAddressFormField(),
        SizedBox(height: getProportionateScreenWidth(20)),
        DefaultButton(
          text: 'CONTINUE',
          onPressed: () {
            // _formKey.currentState!.save();
            if (_formKey.currentState!.validate()) {
              // Navigator.pushReplacementNamed(
              //   context,
              //   CompleteProfileScreen.routeName,
              // );
            }
          },
        ),
      ]),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue!,
      validator: ValidationBuilder().required().build(),
      decoration: const InputDecoration(
        hintText: 'Enter your first name',
        labelText: 'First name',
        suffixIcon: SuffixIcon(svgSrc: 'assets/icons/user.svg'),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue!,
      validator: ValidationBuilder().required().build(),
      decoration: const InputDecoration(
        hintText: 'Enter your last name',
        labelText: 'Last name',
        suffixIcon: SuffixIcon(svgSrc: 'assets/icons/user.svg'),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      onSaved: (newValue) => phoneNumber = newValue!,
      validator: ValidationBuilder().required().phone().build(),
      decoration: const InputDecoration(
        hintText: 'Enter your phone number',
        labelText: 'Phone number',
        suffixIcon: SuffixIcon(svgSrc: 'assets/icons/phone.svg'),
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue!,
      validator: ValidationBuilder().required().build(),
      decoration: const InputDecoration(
        hintText: 'Enter your address',
        labelText: 'Address',
        suffixIcon: SuffixIcon(svgSrc: 'assets/icons/location_point.svg'),
      ),
    );
  }
}
