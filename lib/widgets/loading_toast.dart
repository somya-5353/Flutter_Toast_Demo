import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

class LoaderButton extends StatelessWidget{

  int backgroundColor = 0x42000000;
  int seconds = 2;
  bool clickClose = true;
  bool allowClick = true;
  bool crossPage = true;
  int animationMilliseconds = 200;
  int animationReverseMilliseconds = 200;
  BackButtonBehavior backButtonBehavior = BackButtonBehavior.none;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return  RaisedButton(
         onPressed: () {
       BotToast.showLoading(
           clickClose: clickClose,
           allowClick: allowClick,
           crossPage: crossPage,
           backButtonBehavior: backButtonBehavior,
           animationDuration:
           Duration(milliseconds: animationMilliseconds),
           animationReverseDuration:
           Duration(milliseconds: animationReverseMilliseconds),
           duration: Duration(
             seconds: seconds,
           ),
           backgroundColor: Color(backgroundColor));
     },
    child: Text("Loading"),
     );

  }

}