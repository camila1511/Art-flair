import 'package:auth_firebase_app/ui/pages/actividades/listStatus.dart';
import 'package:flutter/material.dart';

class ActividadesWidget extends StatelessWidget {
  const ActividadesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListStatus());
  }
}
