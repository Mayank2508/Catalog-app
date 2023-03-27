import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context)=>ThemeData(
        cardColor: Colors.white,
        canvasColor: creamColor,
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.green,
          elevation: 0.1,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme,
        )
      );
      static ThemeData darkTheme(BuildContext context)=>ThemeData(
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.1,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme,
        )
      );

      static Color creamColor=Color(0xfff5f5f5);
      static Color darkCreamColor=Color(0xff0b0b0b);
      static Color darkBluishColor=Color.fromARGB(255, 166, 7, 7);
       static Color lightBluishColor=Color.fromARGB(255, 83, 11, 6);
}