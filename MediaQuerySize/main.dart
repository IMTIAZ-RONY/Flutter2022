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
    var width= MediaQuery.of(context).size.width;
    var height= MediaQuery.of(context).size.height;
    var orientation=MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MediaQuery',
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
            Text('Screen width = ${width}'),
            Text('Screen height = ${height}'),
            Text('Screen orientation = ${orientation}'),



          ],
        ),



    );
  }
}
