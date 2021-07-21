import 'package:flutter/cupertino.dart';
import 'package:voice_radio/constants/constants.dart';
import 'package:voice_radio/models/products.dart';

class CardItem extends StatelessWidget {
  final Product products;
  final Function() onPress;

  const CardItem({
    required this.products,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              color: products.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(products.image),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6, bottom: 1),
            child: Text(products.title,
                style: TextStyle(fontSize: 14, color: kTextColor)),
          ),
          Text(
            "\$${products.price.toString()}",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )
        ],
      ),
    );
  }
}