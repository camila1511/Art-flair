// ignore_for_file: use_key_in_widget_constructors

import 'package:auth_firebase_app/model/statusList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardStatus extends StatelessWidget {
  Album album;
  CardStatus(this.album);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              padding(Image.asset(album.imageUser, height: 40.0, width: 40.0)),
              padding(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    album.name,
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    album.date,
                    style: TextStyle(fontSize: 18.0, color: Colors.grey),
                  )
                ],
              ))
            ],
          ),
          Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
              child: Text(album.text, style: TextStyle(fontSize: 20.0)))
        ],
      ),
    );
  }

  Widget padding(Widget widget) {
    return Padding(padding: EdgeInsets.all(10.0), child: widget);
  }
}
