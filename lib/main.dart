import 'package:chapter_1/pages/home_page.dart';
import 'package:chapter_1/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      
      themeMode: ThemeMode.light,
      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.deepPurple) ,),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(backgroundColor: Colors.black) ,
        
      ),
      routes: {
        "/" : (context)  => LoginPage(),
        "/home" : (context)  => HomePage(),
        "/login" :(context) => LoginPage() ,
      }
      
    
    );
  }
}
