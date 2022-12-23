import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';
import 'ToDoPage.dart';
void main (){
  return runApp(MyApp());
}
class MyApp extends StatelessWidget{
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'To Do ' ,
      theme:ThemeData(primarySwatch:Colors.green ) ,
      debugShowCheckedModeBanner:false ,
      home:ToDoPage() ,
    );

  }

}