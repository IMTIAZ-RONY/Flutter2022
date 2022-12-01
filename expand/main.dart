import 'package:flutter/material.dart';

void main() {
 return runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(

        body:Column(
          children:<Widget> [

            Expanded( flex:1,
        child:Container(
            child:Text('SARAH',
            style:TextStyle(fontStyle:FontStyle.italic ,fontSize:25.0 ,fontWeight:FontWeight.w900 ,color:Colors.lightBlue,),) ,
          color:Colors.amberAccent,
              alignment:Alignment.center ,


            ) ,
          ),
            Expanded(flex:2,
              child:Container(
              child:Text('SARAH',
                style:TextStyle(fontStyle:FontStyle.italic ,fontSize:25.0 ,fontWeight:FontWeight.w900 ,color:Colors.lightBlue,),) ,
              color:Colors.purple,
              alignment:Alignment.center ,



            ) ,
            ),
            Expanded(flex:1,
              child:Container(
              child:Text('SARAH',
                style:TextStyle(fontStyle:FontStyle.italic ,fontSize:25.0 ,fontWeight:FontWeight.w900 ,color:Colors.lightBlue,),) ,
              color:Colors.red,
              alignment:Alignment.center ,


            ) ,
            ),
          ],
        ),
      ) ,
    );
  }
}
