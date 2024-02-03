// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chapter_1/widgets/home_widget/add_to_cart.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${Catalog.price}".text.bold.xl4.red500.make(),
            AddToCart(
              catalog: Catalog,
            ).wh(130, 50)
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
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(children: [
                    Catalog.name.text.bold.xl4
                        .color(Mytheme.darkBluishColor)
                        .make(),
                    Catalog.desc.text.textStyle(context.captionStyle).make(),
                    10.heightBox,
                    "Sit lorem lorem nonumy stet sed. Et rebum diam sadipscing duo aliquyam lorem ipsum et, eos accusam vero rebum lorem lorem lorem. Takimata invidunt labore dolore et sit consetetur, lorem magna sanctus rebum stet amet ea ea ipsum. Dolore magna amet accusam et aliquyam ea justo takimata kasd. Kasd rebum."
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                        .p16()
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
