import 'package:flutter/material.dart';
import 'package:tab_bar_tab_view_fragment/Fragment/AlarmFragment.dart';
import 'package:tab_bar_tab_view_fragment/Fragment/ContactsFragment.dart';
import 'package:tab_bar_tab_view_fragment/Fragment/E-mailFragment.dart';
import 'package:tab_bar_tab_view_fragment/Fragment/HomeFragment.dart';
import 'package:tab_bar_tab_view_fragment/Fragment/ImagesFragment.dart';
import 'package:tab_bar_tab_view_fragment/Fragment/PersonFragment.dart';
import 'package:tab_bar_tab_view_fragment/Fragment/SearchFragment.dart';
import 'package:tab_bar_tab_view_fragment/Fragment/SettingsFragment.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      darkTheme: ThemeData(primarySwatch: Colors.teal),
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
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Shoping',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
              color: Colors.purple,
              backgroundColor: Colors.teal,
            ),
          ),
          titleSpacing: 5,
          toolbarHeight: 60,
          toolbarOpacity: 1,
          centerTitle: true,
          elevation: 500,
          bottom: TabBar(
            isScrollable:true ,
              tabs: [
                Tab(icon: Icon(Icons.home),text:'Home' ,),
                Tab(icon: Icon(Icons.search),text:'Search' ,),
                Tab(icon: Icon(Icons.contacts),text:'Contacts' ,),
                Tab(icon: Icon(Icons.email),text:'E-mail' ,),
                Tab(icon: Icon(Icons.access_alarm),text:'Alarm',),
                Tab(icon: Icon(Icons.person),text:'Person'),
                Tab(icon: Icon(Icons.image),text:'Image'),
                Tab(icon: Icon(Icons.settings),text:'Settings'),
              ]
          ),
        ),
        body:TabBarView(
            children: [
              HomeFragment(),
              SearchFragment(),
              ContactsFragment(),
              EmailFragment(),
              AlarmFragment(),
              PersonFragment(),
              ImagesFragment(),
              SettingsFragment(),

            ],
        ) ,

      ),
    );
  }
}
