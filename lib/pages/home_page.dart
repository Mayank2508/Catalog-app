import 'package:ecommerce/core/store.dart';
import 'package:ecommerce/models/catalog.dart';
import 'package:ecommerce/utils/routes.dart';
import 'package:ecommerce/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/widgets/drawer.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';
import '../widgets/item_widgets.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
 
class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days=30;
  final url="https://api.npoint.io/741ab4f9851f2ddddbcc";
  //final url="mongodb+srv://MayankCNB2510:ma_2508#csk@cluster0.cfxizyo.mongodb.net/?retryWrites=true&w=majority";

  @override
  void initState(){
    super.initState();
    loadData();

  }
  loadData() async{
    final response=await http.get(Uri.parse(url));
    
    final catalogJson=response.body;
   
   
    //final  catalogJson=await rootBundle.loadString("assets/files/catalog.json");
 final  decodedData=jsonDecode(catalogJson);
  var productsData=decodedData["products"];
  
  
  CatalogModel.items=List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
  setState(() {
    
  });

  }
  Widget build(BuildContext context) {
    final _cart =(VxState.store as MyStore).cart;



    return  Scaffold(
      drawer: MyDrawer(),
      backgroundColor: context.cardColor,
      floatingActionButton: FloatingActionButton(
        onPressed:()=>Navigator.pushNamed(context,MyRoutes.cartRoute),
        //backgroundColor: context.theme.buttonColor,
        child:Icon(CupertinoIcons.cart,color: Colors.white,),
        ).badge(color:Color.fromARGB(255, 68, 102, 239),size: 20,count: _cart.items.length),
      body:SafeArea (
        child: Container(
          padding: Vx.m32,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         CatalogHeader(),
         if(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)
            CatalogList().expand(),

        ],
      ),
        ),
      ),
      
      
    );
    
  }
}






      
  



