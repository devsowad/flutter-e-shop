import 'package:flutter/material.dart';

import '../../components/custom_navigation_bar.dart';
import '../../enums.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomNavigationBar(selectedMenu: MenuState.profile),
    );
  }
}
