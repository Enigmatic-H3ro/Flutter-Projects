import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData iconData;
  final Function onPressed;

  RoundIconButton({@required this.iconData, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(iconData),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 51.0,
        height: 51.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}