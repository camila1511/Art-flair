import 'package:auth_firebase_app/ui/pages/home.dart';
import 'package:auth_firebase_app/ui/pages/messages/message_screen.dart';
import 'package:auth_firebase_app/ui/pages/login_page.dart';
import 'package:auth_firebase_app/ui/pages/chat_body.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Art Flair',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.pink,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          ),
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.w100,
          ),
          bodyText1: TextStyle(fontSize: 18.0),
        ),
      ),
      home: Home(),
    );
  }
}
