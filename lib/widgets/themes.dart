// ignore_for_file: deprecated_member_use, prefer_const_constructors, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepPurple,
        cardColor: Colors.white,
        buttonColor: darkBluishColor,
        accentColor: darkBluishColor,
        canvasColor: creamColor,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme.copyWith(
                headline6:
                    context.textTheme.headline6!.copyWith(color: Colors.black),
              ),
        )
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black,
        buttonColor: lightBluishColor,
        accentColor: Colors.white,
        canvasColor: darkcreamcolor,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: Theme.of(context).textTheme.copyWith(
                headline6:
                    context.textTheme.headline6!.copyWith(color: Colors.white),
              ),
        )
      );

  //colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkcreamcolor = Vx.gray900;
  static Color lightBluishColor = Vx.indigo500;
  static Color darkBluishColor = Color(0xff403b58);
}
