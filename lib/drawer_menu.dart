import 'package:flutter/material.dart';
import 'package:mazuca0382/main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.rectangle,
              text: 'Row Centrado',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.inicio)}),
          _buildDrawerItem(
              icon: Icons.rectangle,
              text: 'Row Izquierda',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.profile)}),
          _buildDrawerItem(
              icon: Icons.rectangle,
              text: 'Row Derecho',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.movies)}),
          Divider(),
          _buildDrawerItem(
              icon: Icons.rectangle,
              text: 'Con Espacio Uniforme',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.contact)}),
          _buildDrawerItem(
              icon: Icons.rectangle,
              text: 'Con Espacio Alrededor',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.espaciado)}),
          _buildDrawerItem(
              icon: Icons.rectangle,
              text: 'Con Espacio Entre',
              onTap: () => {
                    Navigator.pushReplacementNamed(context, MyApp.espacioentre)
                  }),
          _buildDrawerItem(
              icon: Icons.rectangle,
              text: 'Con Centrado Izquierda',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.centrado)}),
          ListTile(
            title: Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/drawer_header.jpg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Mazuca Valenzuela Jonatan",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
