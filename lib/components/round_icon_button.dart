import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton(
      {Key? key,
      required this.icon,
      required this.onPressed,
      this.onLongPressed, this.height, this.width})
      : super(key: key);

  final IconData icon;
  final Function() onPressed;
  Function()? onLongPressed;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      onPressed: onPressed,
      onLongPress: onLongPressed,
      constraints: BoxConstraints.tightFor(
        width: width ?? 56.0,
        height: height ?? 56.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}
