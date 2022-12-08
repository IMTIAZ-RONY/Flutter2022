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

      appBar:AppBar(

        title:Text('Pass data via Navigation') ,
      toolbarOpacity: 1,
      toolbarHeight: 60,
      centerTitle:false ,
      elevation: 500,) ,
      backgroundColor:Colors.purple ,
      body:
      Column(
        mainAxisAlignment:MainAxisAlignment.start ,

        children: [

          ElevatedButton(onPressed: (){

            Navigator.push(context,MaterialPageRoute(builder: (context)=>Activity1('This is from home to activity1'),),);
          }, child:Text('Go activivity 1'),),
          ElevatedButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Activity2('This is form home to activity2'), ),);
          }, child:Text('Go activivity 2'),),

        ],
      ),

    );
  }
}

class Activity1 extends StatelessWidget {
  String msg ;
  Activity1(
      this.msg,{super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(msg) ,),
      body: Center(
        child:
        ElevatedButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Activity2('This is from activity 1 to activity 2'),),);
        }, child:Text(('Go Activity 2'))),
      ),
    );
  }
}

class Activity2 extends StatelessWidget {
  String msg;
  Activity2(this.msg,{super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(msg) ,),
      body: Center(
        child:
        ElevatedButton(onPressed: (){

          Navigator.push(context,MaterialPageRoute(builder: (context)=>Activity1('This is from activity 2 to activity 1 '),),);
        }, child:Text(('Go Activity 1'))),
      ),
    );
  }
}
