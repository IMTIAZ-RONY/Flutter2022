
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
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
          'Responsive Grid',
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
        scrollDirection: Axis.vertical,
        child: ResponsiveGridRow(
            children:[
              ResponsiveGridCol(
                xl:3,lg: 3,md: 4, sm: 6,xs: 12,
              child:Container(
                height: 100,
                color:Colors.blueAccent,
              ),
            ),
              ResponsiveGridCol(
                xl:3,lg: 3,md: 4, sm: 6,xs: 12,
              child:Container(
                height: 100,
                color:Colors.yellowAccent,
              ),
            ),
              ResponsiveGridCol(
                xl:3,lg: 3,md: 4, sm: 6,xs: 12,
              child:Container(
                height: 100,
                color:Colors.pink,
              ),
            ),
              ResponsiveGridCol(
                xl:3,lg: 3,md: 4, sm: 6,xs: 12,
              child:Container(
                height: 100,
                color:Colors.purple,
              ),
            ),
              ResponsiveGridCol(
                xl:3,lg: 3,md: 4, sm: 6,xs: 12,
              child:Container(
                height: 100,
                color:Colors.red,
              ),
            ),
              ResponsiveGridCol(
                xl:3,lg: 3,md: 4, sm: 6,xs: 12,
              child:Container(
                height: 100,
                color:Colors.lightGreenAccent,
              ),
            ),
              ResponsiveGridCol(
                xl:3,lg: 3,md: 4, sm: 6,xs: 12,
              child:Container(
                height: 100,
                color:Colors.tealAccent,
              ),
            ),
              ResponsiveGridCol(
                xl:3,lg: 3,md: 4, sm: 6,xs: 12,
              child:Container(
                height: 100,
                color:Colors.orangeAccent,
              ),
            ),

            ]
        ),
      ),
 










    );
  }
}
