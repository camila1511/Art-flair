import 'package:auth_firebase_app/model/chatList.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChatBody extends StatefulWidget {
  const ChatBody({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<ChatBody> {
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
          body: Center(
            child: ListView.builder(
              itemCount: chatsData.length,
              //itemBuilder: (context, index) => ChatCard(chat: chatsData[index]),
              itemBuilder: (context, index) => ChatCard(),
            ),
          )),
    );
  }
}

class ChatCard extends StatelessWidget {
  //final Chat chat;
  const ChatCard({
    Key? key,
    //this.chat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 20 * 0.75),
          child: Row(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                      radius: 30,
                      //backgroundImage: AssetImage(chat.image),
                      backgroundImage: AssetImage("assets/images/user.png")),
                  //if(chat.isActive)
                  if (true)
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                width: 3)),
                      ),
                    )
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        //chat.name
                        "nombre del usuario",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
              //if (chat.notiCount)
              if (true)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              border: Border.all(color: Colors.pink),
                              borderRadius: BorderRadius.circular(50.0)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 3.0),
                            child: Text(
                              //chat.notiCount
                              "2",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
            ],
          )),
    );
  }
}
