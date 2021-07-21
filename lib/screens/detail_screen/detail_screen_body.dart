import 'package:flutter/material.dart';
import 'package:voice_radio/constants/constants.dart';
import 'package:voice_radio/models/products.dart';
import 'package:voice_radio/screens/detail_screen/product_title.dart';

import 'cart_counter.dart';
import 'color_dot_and_size.dart';

class DetailScreenBody extends StatefulWidget {
  final Product products;

  const DetailScreenBody({required this.products});

  @override
  _DetailScreenBodyState createState() => _DetailScreenBodyState();
}

class _DetailScreenBodyState extends State<DetailScreenBody> {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: size.height * 0.315),
              padding: EdgeInsets.only(
                top: size.height * 0.12,
                left: kDefaultPadding,
              ),
              //height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24)),
              ),
              child: Column(
                children: [
                  ColorDotAndSize(products: widget.products),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32),
                    child: Text(
                      widget.products.description,
                      style: TextStyle(color: kTextColor, height: 1.5),
                    ),
                  ),
                  CartCounter(),
                ],
              ),
            ),
            ProductTitleWithImage(products: widget.products)
          ],
        ),
      ),
    );
  }
}