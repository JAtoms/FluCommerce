import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:voice_radio/constants/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int mumOfItems = 1;
  bool changeColor = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            BuildCounterButton(
              icons: Icons.remove,
              onPressed: () {
                setState(() {
                  if (mumOfItems > 1) {
                    mumOfItems--;
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
            BuildCounterButton(
                icons: Icons.add,
                onPressed: () {
                  setState(() {
                    mumOfItems++;
                  });
                }),
          ],
        ),
        InkWell(
          onTap: (){
            setState(() {
              changeColor = !changeColor;
            });
          },
          child: Container(
            padding: EdgeInsets.all(10),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: changeColor == true ? Color(0XFFFF6464) : kTextColor
            ),
            child: SvgPicture.asset("assets/icons/heart.svg"),
          ),
        )
       
      ],
    );
  }
}

class BuildCounterButton extends StatelessWidget {
  final IconData icons;
  final Function() onPressed;

  const BuildCounterButton({
    required this.icons,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
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
}
