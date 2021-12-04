import 'package:auth_firebase_app/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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
              fontSize: 12.0,
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
          bodyText1: TextStyle(fontSize: 10.0),
        ),
      ),
      home: const LoginPage(),
    );
  }
}
