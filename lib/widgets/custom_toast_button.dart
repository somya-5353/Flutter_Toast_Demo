import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

class CustomToastButton extends StatelessWidget{

  int seconds = 2;
  bool crossPage = true;
  bool clickClose = false;
  bool ignoreContentClick = false;
  bool onlyOne = true;
  int backgroundColor = 0x00000000;
  int animationMilliseconds = 200;
  int animationReverseMilliseconds = 200;
  BackButtonBehavior backButtonBehavior = BackButtonBehavior.none;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      color: Colors.blue,
      onPressed: () {
        BotToast.showCustomText(
          duration: Duration(seconds: seconds),
          onlyOne: onlyOne,
          clickClose: clickClose,
          crossPage: crossPage,
          ignoreContentClick: ignoreContentClick,
          backgroundColor: Color(backgroundColor),
          backButtonBehavior: backButtonBehavior,
          animationDuration:
          Duration(milliseconds: animationMilliseconds),
          animationReverseDuration:
          Duration(milliseconds: animationReverseMilliseconds),
          toastBuilder: (_) => Align(
            alignment: Alignment(0, 0.8),
            child: Card(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8),
                    child: Text("Save the file!"),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.save,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        BotToast.showSimpleNotification(
                            title: "Successfully saved!",
                            crossPage: crossPage,
                            duration: Duration(seconds: seconds));
                      }),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      child: Text(" Custom Text Toast"),
    );

  }

}