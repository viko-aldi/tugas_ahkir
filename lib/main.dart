import 'package:flutter/material.dart';
import 'package:flutter_1/ui/pages/ChooseSeatPage.dart';
import 'package:flutter_1/ui/pages/bonus.dart';
import 'package:flutter_1/ui/pages/get_started.dart';
import 'package:flutter_1/ui/pages/main_page.dart';
import 'package:flutter_1/ui/pages/sign_up.dart';
import 'package:flutter_1/ui/pages/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
        '/sign-up':(context) => SignUpPage(),
        '/bonus':(context) => bonusPage(),
        '/main':(context) => MainPage(),
      },
    );
  }
}