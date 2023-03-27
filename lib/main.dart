import 'package:ecommerce/core/store.dart';
import 'package:ecommerce/pages/cart_page.dart';
import 'package:ecommerce/pages/home_page.dart';
import 'package:ecommerce/pages/loginpage.dart';
import 'package:ecommerce/utils/routes.dart';
import 'package:ecommerce/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'firebase_options.dart';

// import 'package:firebase_core/
// firebase_core.dart';
// import 'firebase_options.dart';

Future<void> main() async {
//   await Firebase.initializeApp(
//   options: DefaultFirebaseOptions.currentPlatform,
// );
  runApp(VxState(
    store: MyStore(),
    child: const MyApp()));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.loginRoute,
       routes: {
        "/":(context)=>LoginPage(),
        MyRoutes.homeRoute:(context) => HomePage(),
        MyRoutes.loginRoute:(context) => LoginPage(),
        MyRoutes.cartRoute:(context) => CartPage(),
       },
    );
      
  }
}

