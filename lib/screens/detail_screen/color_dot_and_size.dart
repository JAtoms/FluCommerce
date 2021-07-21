import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voice_radio/models/products.dart';

import 'color_dot.dart';

class ColorDotAndSize extends StatelessWidget {
  const ColorDotAndSize({
    Key? key,
    required this.products,
  }) : super(key: key);

  final Product products;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(
                children: [
                  ColorDot(color: products.color, isSelected: true),
                  ColorDot(color: Color(0XFF356C95), isSelected: false),
                  ColorDot(color: Color(0XFFA29B9B), isSelected: false),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Size"),
              Text("${products.size.toString()}cm",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ],
    );
  }
}
