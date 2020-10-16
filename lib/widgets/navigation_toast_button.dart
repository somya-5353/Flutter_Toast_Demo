import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

class NavigationToastButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      color:Colors.blue,
        child: Text("Show Notification Toast"),
      onPressed: () {
      BotToast.showSimpleNotification(
    title: "Simple Notification Toast Message",
    subTitle: "This is Sub Title",
    hideCloseButton: true,
      );
      }

    );
  }

}