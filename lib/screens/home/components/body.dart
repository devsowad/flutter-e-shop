import 'package:e_shop/screens/home/components/special_offers.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'header.dart';
import 'popular_products.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              const Header(),
              SizedBox(height: getProportionateScreenWidth(20)),
              const DiscountBanner(),
              SizedBox(height: getProportionateScreenWidth(20)),
              const Categories(),
              SizedBox(height: getProportionateScreenWidth(20)),
              const SpecialOffers(),
              SizedBox(height: getProportionateScreenWidth(20)),
              const PopularProducts(),
              SizedBox(height: getProportionateScreenWidth(30)),
            ],
          ),
        ),
      ),
    );
  }
}
