import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BlackKey extends StatelessWidget {
  BlackKey({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Color(0xFFbc4873),
      splashColor: Color(0xFFfb5b5a),
      //constraints: BoxConstraints(),
      child: Column(
        mainAxisSize : MainAxisSize.max,
      ),
      onPressed: onPressed,
    );
  }
}