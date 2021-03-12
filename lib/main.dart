import 'package:flutter/material.dart';
import 'package:coworking_space/routes.dart';
import 'package:coworking_space/screens/splash/splash_screen.dart';


import 'package:coworking_space/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      home: SplashScreen(),
      // home: HomeScreen(),
      // We use routeName so that we dont need to remember the name
      // initialRoute: SplashScreen.routeName,//last ma reove this comment
      routes: routes,
    );
  }
}
