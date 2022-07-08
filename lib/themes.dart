import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        drawerTheme: DrawerThemeData(
          backgroundColor: Colors.black,
        ),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          toolbarTextStyle: TextStyle(
            color: Colors.black,
          ),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      );
  static TextStyle smalltext(BuildContext context) => TextStyle(
        fontSize: 18,
      );

  static TextStyle header1(BuildContext context) => TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w700,
      );

  static TextStyle header2(BuildContext context) => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
      );

  static TextStyle see(BuildContext context) => TextStyle(
        fontWeight: FontWeight.w900,
        color: Color(0xff8a7ae7),
      );

  static TextStyle small(BuildContext context) => TextStyle(
        fontSize: 12,
      );

  static TextStyle tiny(BuildContext context) => TextStyle(
        fontSize: 10,
      );

  static TextStyle smallw(BuildContext context) => TextStyle(
        fontSize: 12,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      );

  static TextStyle tinyw(BuildContext context) => TextStyle(
        fontSize: 10,
        color: Colors.white,
      );

  static TextStyle smallheading(BuildContext context) =>
      TextStyle(fontSize: 14, fontWeight: FontWeight.w800);

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        drawerTheme: DrawerThemeData(
          backgroundColor: Colors.black,
        ),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          toolbarTextStyle: TextStyle(
            color: Colors.black,
          ),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      );

  static Color whitw = Color(0xffffffff);
  static Color darkBluishColor = Color(0xff403b58);
}
