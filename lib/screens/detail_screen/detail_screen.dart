import 'package:flutter/material.dart';
import 'package:voice_radio/components/app_bar.dart';
import 'package:voice_radio/models/products.dart';

import 'detail_screen_body.dart';

class DetailScreen extends StatelessWidget {
  final Product products;

  const DetailScreen({required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: products.color,
      appBar: buildAppBar(
          page: "detail screen",
          onPressed: () {
            Navigator.pop(context);
          }),
      body: DetailScreenBody(
        products: products,
      ),
    );
  }
}



