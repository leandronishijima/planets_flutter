import 'package:flutter/material.dart';
import 'package:planets_flutter/ui/home/GradientAppBar.dart';
import 'package:planets_flutter/ui/home/HomePageBody.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListTile(
        leading: Icon(Icons.menu),
        title: Text("Menu"),
      )),
      body: Column(
        children: <Widget>[
          GradientAppBar('treva'),
          HomePageBody(),
        ],
      ),
    );
  }
}
