import 'package:flutter/material.dart';

class SubHeader extends StatelessWidget {
  final String text;

  const SubHeader({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 13, letterSpacing: 1.3),
    );
  }
}
