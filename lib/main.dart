import 'package:chapter_1/pages/home_page.dart';
import 'package:chapter_1/pages/login_page.dart';
import 'package:chapter_1/pages/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.deepPurple),
          fontFamily: GoogleFonts.lato().fontFamily,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          appBarTheme: AppBarTheme(backgroundColor: Colors.black),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute:MyRoutes.homeRoute ,
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
        });
  }
}
