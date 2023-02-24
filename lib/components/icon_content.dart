import 'package:flutter/material.dart';
import 'package:overweight/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label, this.size});

  final IconData? icon;
  final String? label;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Icon(
          icon,
          size: size ?? 80.0,
          // color: Color(0xFFEB1555),
        ),
        const SizedBox(height: 15.0),
        Center(
          child: Text(
            label!,
            style: kLabelTextStyle,
          ),
        )
      ],
    );
  }
}
