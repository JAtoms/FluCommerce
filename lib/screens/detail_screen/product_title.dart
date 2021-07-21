import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voice_radio/constants/constants.dart';
import 'package:voice_radio/models/products.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.products,
  }) : super(key: key);

  final Product products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            products.title,
            style: Theme.of(context).textTheme.headline4!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(text: "Price\n"),
                  TextSpan(
                      text: "\$${products.price}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ))
                ]),
              ),
              SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                  child: Hero(
                    tag: products.id,
                    child: Image.asset(
                      products.image,
                      fit: BoxFit.fill,
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}