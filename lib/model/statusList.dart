import 'dart:ui';
import 'package:flutter/material.dart';

class Album {
  String imageUser;
  String name;
  String date;
  String text;

  Album(this.imageUser, this.name, this.date, this.text);

  static List<Album> albums() {
    return [
      Album("assets/images/user.png", "Jenny wilson", "4 de julio 2021",
          "Text labels need to be distinct from other elements. If the text label isn’t capitalized, it should use a different color, style, or layout from other text."),
      Album("assets/images/user_2.png", "Esther Howard", "8 de agosto 2021",
          "El arte del grabado esta inspirado en la perfección del revelado ante una superficie plana, convirtiendolo en algo real y tangible."),
      Album(
          "assets/images/user_3.png",
          "Ralph Edwards",
          "12 de septiembre 2021",
          "Este comentario es un texto dummin, pero quiero conocer mas sobre el arte y cositas variadas de grabado.")
    ];
  }
}
