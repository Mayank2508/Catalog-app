import 'package:ecommerce/widgets/home_widgets/add_to_cart.dart';
import 'package:ecommerce/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';


class homeDetailPage extends StatelessWidget{

  final Item catalog;
  const homeDetailPage({required Key key,required this.catalog}):assert(catalog!=null),
  super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl4.red800.make(),
               AddToCart(catalog: catalog,
               key: ValueKey(catalog.id),).wh(120,50)
                ],
              ).pOnly(right: 8.0).p32(),
      body:SafeArea(
        bottom: false,
        child:
      
     Column(
      children:[
        Hero(tag: Key(catalog.id.toString()), 
        child: 
      Image.network(catalog.image),).h32(context),
      Expanded(child:VxArc(
        height: 30.0, 
        arcType: VxArcType.CONVEY,
        edge: VxEdge.TOP,
        child: 
      
      Container(
        color: Colors.white,
        width: context.screenWidth,
        child: Column(
          children: [
            catalog.name.text.xl4.color(MyTheme.darkBluishColor).bold.make(),
             catalog.desc.text.textStyle(context.captionStyle!).xl.make(),
              10.heightBox,
              "This is a very great product".text.textStyle(context.captionStyle!).make().p16(),
          ],
        ).py64(),
      ))
      ),
      ],
    ),
      )
    );
  }

}