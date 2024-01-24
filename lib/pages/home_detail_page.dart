// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chapter_1/widgets/themes.dart';
import 'package:flutter/material.dart';

import 'package:chapter_1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item Catalog;
  const HomeDetailPage({
    Key? key,
    required this.Catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Mytheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${Catalog.price}".text.bold.xl4.red500.make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Mytheme.darkBluishColor),
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    child: "Buy".text.white.make())
                .wh(100, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Hero(
                    tag: Key(Catalog.id.toString()),
                    child: Image.network(Catalog.image))
                .h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                edge: VxEdge.top,
                arcType: VxArcType.convey,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(children: [
                    Catalog.name.text.bold.xl4
                        .color(Mytheme.darkBluishColor)
                        .make(),
                    Catalog.desc.text.textStyle(context.captionStyle).make(),
                    10.heightBox,
                  ]).py64(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
