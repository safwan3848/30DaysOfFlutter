// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tutorials/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "safwan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
