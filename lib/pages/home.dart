import 'package:auth_firebase_app/pages/login_page.dart';
import 'package:auth_firebase_app/pages/register_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }
}

class body extends StatelessWidget {
  const body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg-image.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 180,
                  )),
            ),
          ),
          BtnSession(),
        ],
      ),
    );
  }
}

class BtnSession extends StatelessWidget {
  const BtnSession({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(180, 60),
                  primary: Colors.white,
                  side: BorderSide(
                    width: 2.0,
                    color: Colors.black,
                  )),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(180, 60),
                  primary: Colors.black,
                  side: BorderSide(
                    width: 2.0,
                    color: Colors.black,
                  )),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RegisterPage(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Registrate',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
