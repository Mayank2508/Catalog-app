import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final imageurl="https://upload.wikimedia.org/wikipedia/commons/e/ef/Virat_Kohli_during_the_India_vs_Aus_4th_Test_match_at_Narendra_Modi_Stadium_on_09_March_2023.jpg";
    return Drawer(
      child:Container(
        color: Colors.deepPurple,
      
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(

            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.red
              ),
              accountName:Text("Mayank") ,
              accountEmail: Text("mayank@gmail.com"),
              currentAccountPicture: CircleAvatar(
                
                backgroundImage:NetworkImage(imageurl),
                )
                


          ),
          ),
          ListTile(
            leading: Icon(
              
              CupertinoIcons.home,
              color:Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(
              color: Colors.white,
            ),),
          ),
           ListTile(
            leading: Icon(
              
              CupertinoIcons.mail,
              color:Colors.white,
            ),
            title: Text(
              "Email me",
              textScaleFactor: 1.2,
              style: TextStyle(
              color: Colors.white,
            ),),
          ),
           ListTile(
            leading: Icon(
              
              CupertinoIcons.profile_circled,
              color:Colors.white,
            ),
            title: Text(
              "profile",
              textScaleFactor: 1.2,
              style: TextStyle(
              color: Colors.white,
            ),),
          ),
          

        ],
      ),
      
    ),
    );
  }

}