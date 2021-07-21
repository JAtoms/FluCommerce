import 'package:flutter/material.dart';
import 'package:voice_radio/components/app_bar.dart';

import 'home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(
        page: "homepage",
        onPressed: () {},
      ),
      body: HomeScreenBody(),
    );
  }
}
