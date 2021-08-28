// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use

//import 'package:flutter/mate rial.dart';
import 'package:flutter/material.dart';
import 'package:tutorials/pages/login_page.dart';
import 'package:tutorials/utils/routes.dart';
import 'package:tutorials/widgets/themes.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
