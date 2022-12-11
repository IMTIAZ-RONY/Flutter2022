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
          'Flexible',
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

         Column(
          mainAxisAlignment:MainAxisAlignment.start ,
          children: [
            Flexible(
              fit:FlexFit.loose ,
              flex: 1,
              child: Container(

                color:Colors.purpleAccent ,
              ),
            ),
            Flexible(
              fit:FlexFit.tight ,
              flex:2,
              child:Container(

              color:Colors.blue ,
            ),
            ),
            Flexible(
              fit:FlexFit.loose ,
              flex: 1,
              child: Container(

                color:Colors.black ,
              ),
            ),
            Flexible(
              fit:FlexFit.tight ,
              flex: 3,
              child:Container(

              color:Colors.pink ,
            ),
            ),


          ],
        ),



    );
  }
}
