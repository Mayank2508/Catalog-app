import 'package:ecommerce/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class LoginPage extends StatefulWidget{
  
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton=false;
  final _formKey=GlobalKey<FormState>();
  moveToHome(BuildContext context) async{
   
    
    setState(() {
                 changeButton=true;
              });
              await Future.delayed(Duration(seconds: 1));
        
               await Navigator.pushNamed(context, MyRoutes.homeRoute);
              setState(() {
                changeButton=false;
              });
      
  }

     
  


  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.canvasColor,
      child: SingleChildScrollView(
       child:Form(

        child:Column(
        children: [
          Image.asset("assets/images/loginimage.png",

          fit: BoxFit.contain,
          height: 300,),
          SizedBox(height: 20.0,
  
          ),
          Text("welcome $name",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: 20.0,
  
          ),
          Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
          child: 
          Column(
            children:[
          TextFormField(
            
            decoration: InputDecoration(
              hintText: "ENTER USERNAME",
              labelText: "USERNAME",
            ),
            validator: (value) {
              if(value!.isEmpty){
                return "username cannot be empty";
              }
              return null;
            },
            onChanged: (value){
              name=value;
              setState(() {
                
              });
            },
          ),
           TextFormField(
              obscureText: true,

            decoration: InputDecoration(
              hintText: "ENTER PASSWORD",
              labelText: "password",
            ),
            validator: (value) {
              if(value!.isNotEmpty){
                return "password cannot be empty";
              }
              else if(value.length<6){
                return "password length should be 6";
              }
              return null;
            },
          ),
          SizedBox(height: 20.0,
  
          ),
          Material(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(changeButton?50:8),
          child:InkWell(
            splashColor: Colors.red,
            onTap: ()=>moveToHome(context),
            
          
          child :AnimatedContainer(
            duration: Duration(seconds: 1),
            width:changeButton ? 50 :150,
            height:50,
            
            alignment: Alignment.center,
            child:changeButton? 
            Icon(Icons.done,
            color: Colors.white,):
            Text(
              "login",
              style: TextStyle(
              color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
          ),
          
          ),
          )
          )
          /*ElevatedButton(child: Text("Login"),

          style: TextButton.styleFrom(minimumSize: Size(150,40),),
            
  
          onPressed: (){
            Navigator.pushNamed(context, MyRoutes.homeRoute);
    
          },
          )*/

        ],
      ),
          )
        ],
      ),
      ),
      )
    );
    
  }
} 