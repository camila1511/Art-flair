import 'package:auth_firebase_app/widgets/Actividades_widget.dart';
import 'package:auth_firebase_app/widgets/home_widget.dart';
import 'package:auth_firebase_app/pages/photoUpload.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:auth_firebase_app/pages/login_page.dart';

class ContentPage extends StatefulWidget {
  final User user;
  const ContentPage({required this.user});

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
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 25),
          child: Align(
              alignment: Alignment.topRight,
              child: FloatingActionButton(
                  child: Icon(Icons.logout),
                  backgroundColor: Colors.pink[800],
                  onPressed: () {
                    if (User != null) {
                      FirebaseAuth.instance.signOut();
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    }
                  })),
        ),
      ),
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
      ),
    );
  }
}
