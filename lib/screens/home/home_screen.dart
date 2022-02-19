import 'package:flutter/material.dart';

import '../../components/custom_navigation_bar.dart';
import '../../enums.dart';
import '../../size_config.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomNavigationBar(selectedMenu: MenuState.home),
    );
  }
}
