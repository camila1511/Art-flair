import 'package:auth_firebase_app/ui/pages/authentication/login.dart';
import 'package:auth_firebase_app/ui/pages/chat_body.dart';
import 'package:auth_firebase_app/ui/widgets/publicaciones_widget.dart';
import 'package:auth_firebase_app/ui/widgets/Actividades_widget.dart';
import 'package:auth_firebase_app/ui/pages/photoUpload.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  final User user;
  const ContentPage({required this.user});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    ActividadesWidget(),
    PublicacionesWidget(),
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 66,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Art Flair',
          style: TextStyle(color: Colors.black, fontSize: 26.0),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatBody(),
                )),
            icon: const Icon(Icons.message),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.invert_colors_on),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              if (User != null) {
                FirebaseAuth.instance.signOut();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              }
            },
            icon: const Icon(Icons.logout),
            color: Colors.black,
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
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
