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
  static TextStyle smalltext(BuildContext context, double width) => TextStyle(
        fontSize: width / 21.77,
      );

  static TextStyle header1(BuildContext context, double width) => TextStyle(
        fontSize: width / 17.81,
        fontWeight: FontWeight.w700,
      );

  static TextStyle header2(BuildContext context, double width) => TextStyle(
        fontSize: width / 21.77,
        fontWeight: FontWeight.w700,
      );

  static TextStyle see(BuildContext context, double width) => TextStyle(
        fontSize: width / 39.2,
        fontWeight: FontWeight.w900,
        color: Color(0xff8a7ae7),
      );

  static TextStyle small(BuildContext context, width) => TextStyle(
        fontSize: width / 32.666,
      );

  static TextStyle tiny(BuildContext context, double width) => TextStyle(
        fontSize: width / 39.2,
      );

  static TextStyle smallw(BuildContext context, double width) => TextStyle(
        fontSize: width / 32.666,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      );

  static TextStyle tinyw(BuildContext context, double width) => TextStyle(
        fontSize: width / 39.2,
        color: Colors.white,
      );

  static TextStyle smallheading(BuildContext context, double width) =>
      TextStyle(fontSize: width / 28, fontWeight: FontWeight.w800);

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
