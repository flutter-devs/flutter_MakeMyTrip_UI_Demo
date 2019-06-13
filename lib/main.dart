import 'package:flutter/material.dart';
import 'package:make_my_trip_flutter_ui/HomePage.dart';
import 'Constant/Constant.dart';
import 'splash/splash_screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Make My Trip',
      routes: <String,WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context)=> AnimatedSplashScreen(),
        HOME_SCREEN: (BuildContext context)=> HomePage(),
      },
      home: AnimatedSplashScreen(),
    );
  }
}

