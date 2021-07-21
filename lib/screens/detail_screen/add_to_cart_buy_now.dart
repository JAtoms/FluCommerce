import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:voice_radio/constants/constants.dart';
import 'package:voice_radio/models/products.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    Key? key,
    required this.products,
  }) : super(key: key);

  final Product products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              padding: EdgeInsets.all(10),
              height: 50,
              width: 58,
              child: SvgPicture.asset(
                  "assets/icons/add_to_cart.svg",
                  color: kTextColor),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: kTextColor)),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                color: products.color,
                child: Text(
                  "Buy Now".toUpperCase(),
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}