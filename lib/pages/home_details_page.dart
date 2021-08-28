// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tutorials/models/catalog.dart';
import 'package:tutorials/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    MyTheme.darkBluishClor,
                  ),
                  shape: MaterialStateProperty.all(
                    StadiumBorder(),
                  )),
              child: "Add to cart".text.make(),
            ).wh(120, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4
                        .color(MyTheme.darkBluishClor)
                        .bold
                        .make(),
                    catalog.desc.text.xl.make(),
                    10.heightBox,
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor erat, ultrices ac tincidunt ac, convallis eu eros."
                        .text
                        .make()
                        .p16()
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
