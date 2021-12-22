import 'package:auth_firebase_app/ui/my_app.dart';
import 'package:auth_firebase_app/model/services/auth.services.dart';
import 'package:auth_firebase_app/model/services/wrapper.dart';
import 'package:auth_firebase_app/ui/pages/authentication/authenticator.dart';
import 'package:auth_firebase_app/ui/pages/messages/message_screen.dart';
import 'package:auth_firebase_app/ui/pages/chat_body.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp().then((value) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _init = Firebase.initializeApp();
    return FutureBuilder(
        future: _init,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Error();
          } else if (snapshot.hasData) {
            return MultiProvider(
              providers: [
                ChangeNotifierProvider<AuthServices>.value(
                    value: AuthServices()),
              ],
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  primarySwatch: Colors.pink,
                ),
                home: Wrapper(),
              ),
            );
          } else {
            return Loading();
          }
        });
  }
}

class Error extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [Icon(Icons.error), Text("Something went wrong")],
        ),
      ),
    );
  }
}

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
