import 'package:flutter/material.dart';
import 'components/body.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      toolbarHeight: 66,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      elevation: 0,
      title: const Text(
        'nombre del usuario',
        style: TextStyle(color: Colors.black, fontSize: 26.0),
      ),
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.invert_colors_on),
          color: Colors.black,
        ),
      ],
    );
  }
}
