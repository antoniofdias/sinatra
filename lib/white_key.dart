import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WhiteKey extends StatelessWidget {
  WhiteKey({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Color(0xFF472b62),
      splashColor: Color(0xFF003f5c),
      //constraints: BoxConstraints(),
      child: Column(
        mainAxisSize : MainAxisSize.max,
      ),
      onPressed: onPressed,
    );
  }
}