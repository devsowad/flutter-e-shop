import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';
import '../enums.dart';
import '../screens/profile/profile_screen.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  final inActiveIconColor = const Color(0xFFB6B6B6);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA),
          )
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildIconButton(
              svgSrc: 'assets/icons/shop_icon.svg',
              menuState: MenuState.home,
              onPressed: () {},
            ),
            buildIconButton(
              svgSrc: 'assets/icons/heart_icon.svg',
              menuState: MenuState.favorites,
              onPressed: () {},
            ),
            buildIconButton(
              svgSrc: 'assets/icons/chat_bubble_icon.svg',
              menuState: MenuState.message,
              onPressed: () {},
            ),
            buildIconButton(
              svgSrc: 'assets/icons/user_icon.svg',
              menuState: MenuState.profile,
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, ProfileScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }

  IconButton buildIconButton({
    required String svgSrc,
    required MenuState menuState,
    required void Function()? onPressed,
  }) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        svgSrc,
        color: menuState == selectedMenu ? kPrimaryColor : inActiveIconColor,
      ),
    );
  }
}
