import 'package:chapter_1/core/store.dart';
import 'package:chapter_1/pages/cart_page.dart';
import 'package:chapter_1/pages/home_page.dart';
import 'package:chapter_1/pages/login_page.dart';
import 'package:velocity_x/velocity_x.dart';
import '../utils/routes.dart';
import 'package:chapter_1/widgets/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.system,
        theme: Mytheme.lightTheme(context),
        darkTheme: Mytheme.darkTheme(context),
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoutes.homeRoute,
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
          MyRoutes.cartRoute: (context) => CartPage(),
        });
  }
}
