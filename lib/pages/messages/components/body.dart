import 'package:auth_firebase_app/pages/messages/components/chat_input_filed.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemBuilder: (context, index) => Text("Chat Text")),
        ),
        ChatInputField(),
      ],
    );
  }
}
