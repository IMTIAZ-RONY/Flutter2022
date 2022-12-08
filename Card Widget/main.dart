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
          'Card Widget',
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
      body: Center(
        child: Card(
          elevation: 120,
          shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(50) ) ,
          shadowColor: Colors.red,
          color: Color.fromRGBO(126, 255, 255, 1),
          child: SizedBox(
            height: 200,
            width: 200,
            child: Center(
              child: Text(
                'This is card',
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
