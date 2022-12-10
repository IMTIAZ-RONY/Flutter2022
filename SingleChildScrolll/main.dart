import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      color: Colors.pinkAccent,
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SingleChildScrollView',
          style: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 30,
              color: Colors.yellow,
              backgroundColor: Colors.green),
        ),
        toolbarHeight: 60,
        titleSpacing: 5,
        centerTitle: true,
        toolbarOpacity: 1,
        elevation: 500,
      ),
      body:
      SingleChildScrollView(
        scrollDirection:Axis.vertical ,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.start ,
          children: [
            Container(
              width:200 ,
              height: 200,
              color:Colors.purpleAccent ,
            ),
            Container(
              width:200 ,
              height: 200,
              color:Colors.blue ,
            ),
            Container(
              width:200 ,
              height: 200,
              color:Colors.black ,
            ),
            Container(
              width:200 ,
              height: 200,
              color:Colors.pink ,
            ),
            Container(
              width:200 ,
              height: 200,
              color:Colors.teal ,
            ),
            Container(
              width:200 ,
              height: 200,
              color:Color.fromRGBO(47,56,150,1) ,
            ),
            Container(
              width:200 ,
              height: 200,
              color:Color(0xFF8B5324) ,
            ),
            Container(
              width:200 ,
              height: 200,
              color:Colors.yellow ,
            ),

          ],
        ),
      ),


    );
  }
}
