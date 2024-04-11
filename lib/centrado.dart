import 'package:mazuca0382/drawer_menu.dart';
import 'package:flutter/material.dart';

class Centrado extends StatelessWidget {
  static const String routeName = '/centrado';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mazuca Centrado Izquierda"),
        backgroundColor: Colors.amber,
      ),
      drawer: DrawerMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(0.0),
            color: Color(0xff1d005d),
            width: 80.0,
            height: 80.0,
          ),
          Container(
            padding: const EdgeInsets.all(0.0),
            color: Color(0xff990606),
            width: 80.0,
            height: 80.0,
          ),
          Container(
            padding: const EdgeInsets.all(0.0),
            color: Color(0xff0e120e),
            width: 80.0,
            height: 80.0,
          ),
        ],
      ),
    );
  }
}
