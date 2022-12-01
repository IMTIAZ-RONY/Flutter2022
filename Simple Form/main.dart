import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      darkTheme: ThemeData(primarySwatch: Colors.indigo),
      color: Color.fromARGB(20, 30, 10, 25),
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});
ButtonStyle buttonStyle=ElevatedButton.styleFrom(
  minimumSize:Size(double.infinity, 60)
);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bismillah',
          style: TextStyle(
            fontSize: 30,
            color: Colors.yellow,
          ),
        ),
        toolbarHeight: 70,
        titleSpacing: 0,
        centerTitle: true,
        toolbarOpacity: 1,
        elevation: 100,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(border:OutlineInputBorder(),labelText: 'First Name'),),),
          Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(border:OutlineInputBorder(),labelText: 'Last Name'),),),
          Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(border:OutlineInputBorder(),labelText: 'E-mail Address'),),),
          Padding(padding: EdgeInsets.all(10),child:ElevatedButton(onPressed: (){}, child: Text('Submit'),style:buttonStyle ,) ,),
        ],
      ),
    );
  }
}
