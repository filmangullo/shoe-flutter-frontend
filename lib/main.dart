import 'package:flutter/material.dart';
import 'package:shoe/home/main_page.dart';
import 'package:shoe/pages/detail_chat_page.dart';
import 'package:shoe/pages/sign_in_page.dart';
import 'package:shoe/pages/splash_page.dart';
import 'package:shoe/pages/sign_up_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (content) => SignInPage(),
        '/sign-up': (content) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChatPage(),
      },
    );
  }
}
