import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int mumOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
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