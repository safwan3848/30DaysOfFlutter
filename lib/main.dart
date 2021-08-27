// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

//import 'package:flutter/mate rial.dart';
import 'package:flutter/material.dart';
import 'package:tutorials/pages/login_page.dart';
import 'package:tutorials/utils/routes.dart';
import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,

        //primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
      MyRoutes.homeRoute: (context) => HomePage(),
      MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
