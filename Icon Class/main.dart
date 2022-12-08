import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(primarySwatch:Colors.pink ) ,
      darkTheme:ThemeData(primarySwatch:Colors.green ) ,
      color:Colors.purple,
      debugShowCheckedModeBanner:false ,
      home:HomeActivity() ,
    );
  }
}
class HomeActivity extends StatelessWidget {
   HomeActivity({super.key});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text('Icon Widget') ,
      toolbarOpacity: 1,
      toolbarHeight: 60,
      centerTitle:true ,
      elevation: 500,) ,
      backgroundColor:Colors.purple ,
      body:Center(
        child:Icon(Icons.account_balance,size: 100,

          color: Colors.yellow,
        ) ,
        ) ,

    );
  }
}


