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
      body: Container(
        constraints: BoxConstraints(
            minHeight: 70, maxHeight: 200, minWidth: 70, maxWidth: 200),
        color: Colors.green,
        // child: Container(
        //   height: 100,
        //   width: 100,
        //   color: Colors.red,
        // ),
      ),
      drawer: MyDrawer(),
    );
  }
}
