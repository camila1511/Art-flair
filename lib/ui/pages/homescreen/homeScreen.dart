import 'package:auth_firebase_app/model/services/auth.services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<AuthServices>(context);
    return Scaffold(
        appBar: AppBar(
      title: Text("HomePage"),
      actions: [
        IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () async => await loginProvider.logout(),
        )
      ],
    ));
  }
}
