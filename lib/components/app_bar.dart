import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:voice_radio/constants/constants.dart';

AppBar buildAppBar({
  required String page,
  required Function() onPressed,
}) {

  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    leading: IconButton(
      icon: Visibility(
        visible: page == "homepage" ? false : true,
        child: SvgPicture.asset(
          "assets/icons/back.svg",
          color: page == "homepage" ? kTextColor : Colors.white,
        ),
      ),
      onPressed: onPressed,
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/search.svg",
          color: page == "homepage" ? kTextColor : Colors.white,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/cart.svg",
          color: page == "homepage" ? kTextColor : Colors.white,
        ),
        onPressed: () {},
      ),
    ],
  );
}
