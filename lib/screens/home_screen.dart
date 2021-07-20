import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voice_radio/constants/constants.dart';

import 'body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg", color: kTextColor),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg", color: kTextColor,),
          onPressed: (){

          },
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg", color: kTextColor,),
          onPressed: (){

          },
        ),
      ],
    );
  }
}
