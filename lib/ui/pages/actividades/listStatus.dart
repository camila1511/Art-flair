import 'package:auth_firebase_app/model/statusList.dart';
import 'package:auth_firebase_app/ui/pages/actividades/cardStatus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListStatus extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ListStatusState();
}

class ListStatusState extends State<ListStatus> {
  List<Album> albums = Album.albums();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
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
                      SizedBox(
                        width: 0.8 / 4,
                      ),
                      Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                          hintText: "¿Quieres publicar algo?...",
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
          ),
        ),
        Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: albums.length,
                itemBuilder: (BuildContext context, int index) {
                  return Dismissible(
                    key: ObjectKey(albums[index]),
                    child: CardStatus(albums[index]),
                    onDismissed: (direction) {
                      setState(() {
                        albums.removeAt(index);
                      });
                    },
                  );
                })),
      ],
    );
  }
}
