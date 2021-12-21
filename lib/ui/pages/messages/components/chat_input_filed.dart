import 'package:flutter/material.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        child: SafeArea(
          child: Row(
            children: [
              CircleAvatar(
                  radius: 24,
                  //backgroundImage: AssetImage(chat.image),
                  backgroundImage: AssetImage("assets/images/user.png")),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0 * 0.75),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Icon(
                      Icons.sentiment_satisfied_alt_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 0.8 / 4,
                    ),
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                        hintText: "Escribe un mensaje",
                        border: InputBorder.none,
                      ),
                    ))
                  ],
                ),
              )),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.send, size: 30.0),
                color: Colors.black,
              ),
            ],
          ),
        ));
  }
}
