import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  
  DefaultButton({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return new RawMaterialButton(
      fillColor: Color(0xFFbc4873),
      splashColor: Color(0xFF472b62),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 50.0
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget> [
            Text(
              "Default", 
              style: TextStyle(/*fontSize: 20,*/ color: Colors.white),
            ),
            SizedBox(width: 8.0),
            Icon(
              Icons.play_circle_outline,
              color: Colors.white,
            ),
          ]
        ),
      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
  
}