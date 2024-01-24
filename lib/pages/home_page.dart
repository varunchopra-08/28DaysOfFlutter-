import "package:chapter_1/models/catalog.dart";
import "package:chapter_1/utils/routes.dart";
import "package:chapter_1/widgets/home_widget/catalog_header.dart";
import "package:chapter_1/widgets/home_widget/catalog_list.dart";
import "package:chapter_1/widgets/themes.dart";
import "package:flutter/cupertino.dart";
import 'dart:convert';
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:velocity_x/velocity_x.dart";

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var CatalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(CatalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
          backgroundColor:
              context.theme.floatingActionButtonTheme.backgroundColor,
          child: const Icon(
            CupertinoIcons.cart,
            color: Colors.white,
          ),
        ),
        backgroundColor: context.canvasColor,
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  CircularProgressIndicator().centered().py16().expand()
              ],
            ),
          ),
        ));
  }
}
