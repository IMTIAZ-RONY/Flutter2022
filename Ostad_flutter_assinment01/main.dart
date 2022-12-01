import 'package:flutter/material.dart';

main() {
  runApp(const MyApp()); //application
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      darkTheme: ThemeData(primarySwatch: Colors.yellow),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BRAZIL',
          style: TextStyle(
            backgroundColor: Colors.green,
            fontWeight: FontWeight.w900,
            fontSize: 35,
            fontStyle: FontStyle.italic,
            color: Colors.yellow,
          ),
        ),
        titleSpacing: 5,
        centerTitle: false,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 500,
        backgroundColor: Colors.cyanAccent,
        actions: [
          IconButton(
            onPressed: () {
              MySnackBar('I am Search', context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              MySnackBar('I am Comment', context);
            },
            icon: Icon(Icons.comment),
          ),
          IconButton(
            onPressed: () {
              MySnackBar("I am Settings", context);
            },
            icon: Icon(Icons.settings),
          ),

        ],
      ),

      backgroundColor: Colors.yellow,
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        onPressed: () {
          MySnackBar('I am floating actionbar', context);
        },
      ),
      /*drawer: ,
      endDrawer: ,
      bottomNavigationBar: ,
      floatingActionButton: ,*/
    );
  }
}
