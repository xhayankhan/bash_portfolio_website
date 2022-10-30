import 'package:bash_portfolio_website/constants.dart';
import 'package:flutter/material.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: ElevatedButton(
        // padding:  const EdgeInsets.symmetric(
        //   vertical: kDefaultPadding,
        //   horizontal: kDefaultPadding * 2.5,
        // ),
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(50),
        // ),
        // borderSide: const BorderSide(color: Color(0xFFEDEDED)),
        onPressed: press,
        child: Row(
          children: [
            Image.asset(
              imageSrc,
              height: 40,
            ),
            SizedBox(width: kDefaultPadding),
            Text(text)
          ],
        ),
      ),
    );
  }
}
