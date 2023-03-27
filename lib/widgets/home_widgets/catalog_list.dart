import 'package:ecommerce/models/cart.dart';
import 'package:ecommerce/pages/home_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';
import '../../widgets/themes.dart';
import 'add_to_cart.dart';
import 'catalog_image.dart';




class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: ()=>Navigator.push(
            context,
            MaterialPageRoute(
              builder:
             (context)=>homeDetailPage(
              catalog: catalog, key: ValueKey(catalog.id),
              ))),
          

          child :CatalogItem(
           
            catalog: catalog, 
             key: ValueKey(catalog.id),
          ));
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({required Key key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(tag: Key(catalog.id.toString()), 
          child:
          
          CatalogImage(
            key: ValueKey(catalog.id),
            image: catalog.image,
          ),),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(MyTheme.darkBluishColor).bold.make(),
             catalog.desc.text.textStyle(context.captionStyle!).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  AddToCart(catalog:catalog,key: ValueKey(catalog.id)),
                ],
              ).pOnly(right: 8.0)
            ],
          ))
        ],
      ),
    ).color(context.cardColor).rounded.square(150).make().py16();
  }
}

  