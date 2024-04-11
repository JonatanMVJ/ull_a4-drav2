import 'package:mazuca0382/movies.dart';
import 'package:mazuca0382/profile.dart';
import 'package:flutter/material.dart';
import 'package:mazuca0382/espaciado.dart';
import 'package:mazuca0382/espacioentre.dart';
import 'package:mazuca0382/contact.dart';
import 'package:mazuca0382/centrado.dart';
import 'inicio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String inicio = Inicio.routeName;
  static const String profile = Profile.routeName;
  static const String movies = Movies.routeName;
  static const String contact = Contact.routeName;
  static const String espaciado = Espaciado.routeName;
  static const String espacioentre = Espacioentre.routeName;
  static const String centrado = Centrado.routeName;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo Drawer Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        inicio: (context) => Inicio(),
        profile: (context) => Profile(),
        movies: (context) => Movies(),
        contact: (context) => Contact(),
        espaciado: (context) => Espaciado(),
        espacioentre: (context) => Espacioentre(),
        centrado: (context) => Centrado(),
      },
      home: Inicio(),
    );
  }
}
