import 'package:flutter/material.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter_toast_demo/widgets/custom_toast_button.dart';
import 'package:flutter_toast_demo/widgets/loading_toast.dart';
import 'package:flutter_toast_demo/widgets/navigation_toast_button.dart';
import 'package:flutter_toast_demo/widgets/simple_toast_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

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
    return MaterialApp(
        builder: BotToastInit(),
        //initializing the BotToast for the MaterialApp()
        navigatorObservers: [BotToastNavigatorObserver()],
        //registering a navigation observer to listen to route changes
        title: 'Toast Demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Toast Demo'),
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(10, 40, 40, 10),
            child: Center(
              child: Column(
                children: <Widget>[
                  SimpleToastButton(),
                  CustomToastButton(),
                  LoaderButton(),
                  NavigationToastButton(),
                ],
              ),
            ),
          ),
        )
    );
  }
}

