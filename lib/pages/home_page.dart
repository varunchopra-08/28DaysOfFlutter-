import "package:chapter_1/widgets/drawer.dart";
import "package:flutter/material.dart";


class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    int day = 30;
    String name = "Codepur";

    return Scaffold(
      appBar: AppBar(
    
        title: Text("Catalog App"),
        
        
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to the $day $name course "),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
