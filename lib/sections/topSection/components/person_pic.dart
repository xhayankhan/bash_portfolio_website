import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 228.0),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 639, maxHeight: 860),
        child: Image.asset("assets/images/person2.png"),
      ),
    );
  }
}
