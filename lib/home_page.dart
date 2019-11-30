import 'package:flutter/material.dart';
import 'keyboard.dart';
import 'default_button.dart';
import 'record_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => Container(
          child: Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * .5,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF472b62),
                      Color(0xFFbc4873)
                    ]
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(MediaQuery.of(context).size.width * .05)
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Icon(
                      Icons.queue_music,
                      size: MediaQuery.of(context).size.width * .20,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .13),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    DefaultButton(
                      onPressed: () => Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => Keyboard())
                      ),
                    ),
                    RecordButton(
                      onPressed: () => _showToast(context),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Coming soon'),
      ),
    );
  }
}