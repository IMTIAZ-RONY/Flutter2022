import 'package:flutter/material.dart';
import 'Style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyHomePageUI();
  }
}

class MyHomePageUI extends State<MyHomePage> {
  Map<String,double>FormValue={
    'Num1': 0,
    'Num2': 0,
    'Num3': 0,

  };
double SUM=0;


  @override
  Widget build(BuildContext context) {
    MyInputonChange(InputKey,InputValue){
      setState(() {
        FormValue.update(InputKey, (value) => double.parse(InputValue));
      });

    }
    AddAllNumber(){
      SUM=FormValue['Num1']!+FormValue['Num2']!+FormValue['Num3']!;


    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sum Calculator",
          style: TextStyle(
            color: Colors.red,
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        elevation: 200,
        toolbarHeight: 60,
        toolbarOpacity: 1,
      ),
      body: Padding(
        padding: EdgeInsets.all(60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              SUM.toString(),
              style: HeadTextStyle(),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(onChanged:(value){
              MyInputonChange('Num1', value);

            },
              decoration: AppInputStyle('First Number'),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(onChanged:(value){
              MyInputonChange('Num2', value);

            },
              decoration: AppInputStyle('Second Number'),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(onChanged:(value){
              MyInputonChange('Num3', value);
            },
              decoration: AppInputStyle('Third Number'),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                style: AppButtonStyle(),

                child: Text(
                  'ADD',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w800,

                  ),
                ),
                onPressed: () {
                  AddAllNumber();
                  setState(() {

                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
