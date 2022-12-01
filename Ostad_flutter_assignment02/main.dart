import 'package:flutter/material.dart';

main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      color: Colors.red,
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  MyAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
            child: AlertDialog(
              title: Text(
                'Alert !',
              ),
              content: Text('Do you want to delete'),
              actions: [
                TextButton(onPressed:(){
                  MySnackBar('Delete Success', context);
                  Navigator.of(context).pop();
                }, child:Text('Yes'),),
                TextButton(onPressed:(){Navigator.of(context).pop();}, child:Text('No'),),
              ],
            ),
          );
        }
        );
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      padding: EdgeInsets.all(15),
      elevation: 50,
      enableFeedback: true,
      backgroundColor: Colors.red,
      foregroundColor: Colors.yellowAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BRAZIL',
          style: TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 30,
            color: Colors.yellow,
            backgroundColor: Colors.red,
          ),
        ),
        titleSpacing: 5,
        centerTitle: false,
        toolbarOpacity: 1,
        toolbarHeight: 60,
        elevation: 1000,
        actions: [
          IconButton(
            onPressed: () {
              MySnackBar('I am settings', context);
            },
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              MySnackBar('I am history', context);
            },
            icon: Icon(Icons.history),
          ),
          IconButton(
            onPressed: () {
              MySnackBar('I am notifications', context);
            },
            icon: Icon(Icons.notifications),
          ),
        ],
        shadowColor: Colors.yellow,
      ),
      backgroundColor: Colors.green,
      floatingActionButton: FloatingActionButton(
        elevation: 500,
        child: Icon(Icons.add),
        onPressed: () {
          MySnackBar('I am floatingActionButton ', context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellowAccent,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Image',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar('I am home menu', context);
          }
          if (index == 1) {
            MySnackBar('I am image menu', context);
          }
          if (index == 2) {
            MySnackBar('I am profile menu', context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.pinkAccent),
                accountName: Text(
                  'Imtiaz Shamim Rony',
                  style: TextStyle(color: Colors.yellow),
                ),
                accountEmail: Text(
                  'isr2020ss@gmail.com',
                  style: TextStyle(
                    color: Colors.yellow,
                  ),
                ),
                currentAccountPicture:
                    Image.network("https://wallpaper.dog/large/5534438.jpg"),
                onDetailsPressed: () {
                  MySnackBar('This is profile', context);
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                MySnackBar('I am home', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contact'),
              onTap: () {
                MySnackBar('I am contact', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              onTap: () {
                MySnackBar('I am email', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Search'),
              onTap: () {
                MySnackBar('I am Search button', context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                MySnackBar('I am Text Button', context);
              },
              child: Text('Text Button'),
            ),
            ElevatedButton(
              onPressed: () {
                MyAlertDialog( context);
              },
              child: Text('Delete'),
              style: buttonStyle,
            ),
            OutlinedButton(
              onPressed: () {
                MySnackBar('I am Outline Button', context);
              },
              child: Text('Outline Button'),
            ),
          ],
        ),
      ),
    );
  }
}
