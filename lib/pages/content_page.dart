import 'package:auth_firebase_app/widgets/Actividades_widget.dart';
import 'package:auth_firebase_app/widgets/home_widget.dart';
import 'package:auth_firebase_app/pages/photoUpload.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeWidget(),
    ProfileWidget(),
  ];

  void _onItemTapped(int index) {
    if (index == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return photoUpload();
      }));
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Center(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Actividades',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.public),
              label: 'Publicaciones',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo),
              label: 'Publicar',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.pink[800],
          onTap: _onItemTapped,
        ));
  }
}
