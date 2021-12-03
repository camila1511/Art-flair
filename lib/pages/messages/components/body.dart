import 'package:auth_firebase_app/model/ChatMessage.dart';
import 'package:auth_firebase_app/pages/messages/components/chat_input_filed.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: ListView.builder(
                itemCount: demeChatMessages.length,
                itemBuilder: (context, index) =>
                    Message(message: demeChatMessages[index])),
          ),
        ),
        ChatInputField(),
      ],
    );
  }
}

class Message extends StatelessWidget {
  const Message({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        TextMessage(message: message),
      ],
    );
  }
}

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.0),
      padding: EdgeInsets.symmetric(horizontal: 8.0 * 0.75, vertical: 8.0 / 2),
      decoration: BoxDecoration(
          color: Colors.pink, borderRadius: BorderRadius.circular(6)),
      child: Text(message.text, style: TextStyle(color: Colors.white)),
    );
  }
}
