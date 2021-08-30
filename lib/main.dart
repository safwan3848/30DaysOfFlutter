// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use

//import 'package:flutter/mate rial.dart';
import 'package:flutter/material.dart';
import 'package:tutorials/core/store.dart';
import 'package:tutorials/pages/cart_page.dart';
import 'package:tutorials/pages/login_page.dart';
import 'package:tutorials/utils/routes.dart';
import 'package:tutorials/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'pages/home_page.dart';

void main() {
  runApp(VxState(store: MyStore(),
  child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
