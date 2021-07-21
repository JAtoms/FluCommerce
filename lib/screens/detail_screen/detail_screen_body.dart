import 'package:flutter/material.dart';
import 'package:voice_radio/constants/constants.dart';
import 'package:voice_radio/models/products.dart';
import 'package:voice_radio/screens/detail_screen/product_title.dart';

import 'color_dot_and_size.dart';

class DetailScreenBody extends StatefulWidget {
  final Product products;

  const DetailScreenBody({required this.products});

  @override
  _DetailScreenBodyState createState() => _DetailScreenBodyState();
}

class _DetailScreenBodyState extends State<DetailScreenBody> {

  int mumOfItems = 1;
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
                  Row(
                    children: [
                      buildCounterButton(
                        icons: Icons.remove,
                        onPressed: () {
                          setState(() {
                            if (mumOfItems > 1) {
                              mumOfItems--;
                              print("Items are: ${mumOfItems.toString()}");
                            }
                          });
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                            mumOfItems <= 9
                                ? "0${mumOfItems.toString()}"
                                : mumOfItems.toString(),
                            style: Theme.of(context).textTheme.headline6),
                      ),
                      buildCounterButton( icons: Icons.add,
                          onPressed: () {
                            setState(() {
                              mumOfItems++;
                              print("Items are: ${mumOfItems.toString()}");
                            });
                          }),
                    ],
                  )
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

Padding buildCounterButton({
  required IconData icons,
  required Function() onPressed,
}) {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: SizedBox(
      height: 40,
      width: 40,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Icon(icons),
        onPressed: onPressed,
      ),
    ),
  );
}