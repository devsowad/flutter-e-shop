import 'package:badges/badges.dart';
import 'package:e_shop/screens/cart/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'Search products',
                prefixIcon: const Icon(Icons.search),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                  vertical: getProportionateScreenWidth(9),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
        Badge(
          badgeContent: const Text(
            '2',
            style: TextStyle(color: Colors.white),
          ),
          position: BadgePosition.topEnd(top: -5, end: 0),
          badgeColor: kPrimaryColor,
          child: CircleAvatar(
            backgroundColor: kSecondaryColor.withOpacity(0.1),
            radius: getProportionateScreenWidth(25),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, CartScreen.routeName);
              },
              icon: SvgPicture.asset('assets/icons/cart_icon.svg'),
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(5)),
        Badge(
          badgeContent: const Text(
            '5',
            style: TextStyle(color: Colors.white),
          ),
          position: BadgePosition.topEnd(top: -5, end: 0),
          badgeColor: kPrimaryColor,
          child: CircleAvatar(
            backgroundColor: kSecondaryColor.withOpacity(0.1),
            radius: getProportionateScreenWidth(25),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/bell.svg'),
            ),
          ),
        ),
      ],
    );
  }
}
