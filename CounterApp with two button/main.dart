import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}
class MyApp extends StatelessWidget {
  MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp (
    
      theme:ThemeData(backgroundColor:Colors.red ) ,
      debugShowCheckedModeBanner: false,
      home:MyHomePage() ,
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int countingNumber=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.purple ,
      appBar:AppBar(title:Text('Counter App',style:TextStyle(color:Colors.yellow ,fontSize:35, ) , ),) ,
      body:Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            Text('You have pused the button many times'),
          Text(countingNumber.toString()),
          ],
        ),
      ) ,

      floatingActionButton:Row(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
        children: [
          FloatingActionButton(
            backgroundColor:Colors.yellow ,
            child:Icon(Icons.add),onPressed: (){
            setState(() {
              countingNumber=countingNumber+1;
                      });
          },),
          FloatingActionButton(
            backgroundColor:Colors.red ,
            child:Icon(Icons.remove),onPressed: (){
            setState(() {
                   countingNumber=countingNumber-1;   });
          },),
        ],
      ) ,

      floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat ,

    );
  }
}


