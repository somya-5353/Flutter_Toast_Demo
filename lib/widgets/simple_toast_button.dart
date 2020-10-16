import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

class SimpleToastButton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return RaisedButton(
      color: Colors.blue,
      child: Text('Simple Toast'),
      onPressed: () {
        BotToast.showText(text: 'This is a simple toast message!');
      },
    );
  }

}