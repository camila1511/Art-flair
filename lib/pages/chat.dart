import 'package:auth_firebase_app/model/chatList.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 66,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
          title: const Text(
            'Mensajes',
            style: TextStyle(color: Colors.black, fontSize: 26.0),
          ),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
              color: Colors.black),
        ),
        body: ListView.builder(
          itemCount: chatsData.length,
          itemBuilder: (context, index) => Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(chatsData[index].image),
              )
            ],
          ),
        ),
      ),
    );
  }
}
