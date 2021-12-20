import 'package:auth_firebase_app/ui/pages/authentication/authenticator.dart';
import 'package:auth_firebase_app/ui/pages/homescreen/homeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:auth_firebase_app/ui/pages/authentication/login.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if (user != null) {
      return HomePage();
    } else {
      return Authentication();
    }
  }
}
