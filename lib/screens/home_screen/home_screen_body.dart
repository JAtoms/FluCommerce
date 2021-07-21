import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voice_radio/screens/home_screen/category_card_item.dart';
import 'package:voice_radio/screens/home_screen/categories.dart';
import 'package:voice_radio/constants/constants.dart';
import 'package:voice_radio/models/products_database.dart';

import '../detail_screen/detail_screen.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Women",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold)),
          Categories(),
          Expanded(
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: kDefaultPadding,
                  childAspectRatio: .7,
                ),
                itemBuilder: (context, index) {
                  return CardItem(
                    products: products[index],
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            products: products[index],
                          ),
                        ),
                      );
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}
