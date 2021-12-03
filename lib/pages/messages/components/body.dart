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
        if (!message.isSender) ...[
          CircleAvatar(
            radius: 16,
            backgroundImage: AssetImage("assets/images/user.png"),
          ),
          SizedBox(
            width: 8.0 / 2,
          )
        ],
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
      padding:
          EdgeInsets.symmetric(horizontal: 20.0 * 0.75, vertical: 20.0 / 2),
      decoration: BoxDecoration(
          color: message.isSender ? Colors.pink : Colors.grey[300],
          borderRadius: BorderRadius.circular(6)),
      child: Text(message.text,
          style: TextStyle(
              color: message.isSender
                  ? Colors.white
                  : Theme.of(context).textTheme.bodyText1!.color,
              fontSize: 16.0)),
    );
  }
}
