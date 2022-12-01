import 'package:calculator/main.dart';
import 'package:flutter/material.dart';

void main() {
 return runApp( MyApp());
}

class MyApp extends StatefulWidget {


  @override
  State<MyApp> createState() => _MyAppState();
}
String input=" ",value=' ', resultFinal=' ';
int value1=0,value2=0,result=0,operator=0,presskey=0,pressequal=0,activity=0;
double dresult=0;
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,

      theme:ThemeData(fontFamily:'LibreBaskerville', ) ,
      home:Scaffold(
        appBar:AppBar(
          backgroundColor:Color(0xFFAD1457),
          centerTitle:true ,
          title:Text('Sarah*Calculator*',style:TextStyle(
            fontWeight:FontWeight.w900 ,
            fontStyle:FontStyle.italic ,
            fontSize:30.0,

          color:Colors.white, ),
          ) ,
        ) ,
     body:Column(
       mainAxisAlignment:MainAxisAlignment.end ,
       children: <Widget>[
         Expanded(
           flex:2,
           child: Row(
             mainAxisAlignment:MainAxisAlignment.end ,
             children:<Widget> [
               Column(
                 mainAxisAlignment:MainAxisAlignment.center ,
                 children:<Widget> [
                   Text( input,
                     style:TextStyle(fontSize:38,color:Colors.black,
                     fontWeight:FontWeight.w900,
                   ),
                   ),
               Text( resultFinal,style:TextStyle(fontSize:38,color:Colors.black,
                 fontWeight:FontWeight.w900,
               ),
               ),
                 ],
               ),



             ],

           ),
           ),

         Expanded(
           flex: 1,
           child: Row(children:<Widget>[
             Expanded(
               flex: 1,
             child: InkWell(
               onTap:() {
                 setState(() {
                   if(input.length==12){
                     input='';
                     value='';
                     presskey=0;
                     pressequal=0;
                     operator=0;
                     resultFinal='';
                     value2 = 0;
                   };

                   if(pressequal==1 && value2!=null){
                     input='';
                     value='';
                     presskey=0;
                     pressequal=0;
                     operator=0;
                     resultFinal='';
                     value2 = 0;
                   };
                  presskey=1;

                   input = input + '1';
                   value=value +'1';

                   print('Input is $input');
                   print( 'Value is $value');
                 });


               },
                 child:
                 Container(
                   child: Text("1", style: TextStyle(
                     fontSize: 28.0, fontStyle: FontStyle.italic
                     , fontWeight: FontWeight.w900,
                     color: Colors.white,),
                   ),
                   color: Color(0xFFAD1457),
                   alignment: Alignment.center,

                 ),

             ),

           ),
             Expanded(
               flex: 1,
               child: InkWell(
                 onTap:(){
                   setState(() {
                     if(input.length==12){
                       input='';
                       value='';
                       presskey=0;
                       pressequal=0;
                       operator=0;
                       resultFinal='';
                       value1 = 0;
                       value2=0;
                     };


                     if(pressequal==1 && value2!=null){
                       input='';
                       value='';
                       presskey=0;
                       pressequal=0;
                       operator=0;
                       resultFinal='';
                       value2 = 0;
                     };
                     presskey=1;
                     input=input+'2';
                     value=value+'2';
                     print('Input is $input');
                     print('Value is $value');

                   });
                 } ,
                 child: Container(
                   child:Text("2",style:TextStyle(fontSize:28.0,fontStyle:FontStyle.italic ,fontWeight:FontWeight.w900,
                     color:Colors.white,   ),
                   ),
                   color:Color(0xFFC21858),
                   alignment:Alignment.center,

                 ),
               ),

             ),
             Expanded(
               flex: 1,
               child: InkWell(
                 onTap:(){
                   setState(() {
                     if(input.length==12){
                       input='';
                       value='';
                       presskey=0;
                       pressequal=0;
                       operator=0;
                       resultFinal='';
                       value1 = 0;
                       value2=0;
                     };


                     if(pressequal==1 && value2!=null){
                       input='';
                       value='';
                       presskey=0;
                       pressequal=0;
                       operator=0;
                       resultFinal='';
                       value2 = 0;
                     };
                     presskey=1;

                     input=input+'3';
                     value=value+'3';
                     print('Input is $input');
                     print('Value is $value');
                   });
                 } ,

                 child: Container(
                   child:Text("3",style:TextStyle(fontSize:28.0,fontStyle:FontStyle.italic ,fontWeight:FontWeight.w900,
                     color:Colors.white,   ),
                   ),
                   color:Color(0xFFD81860),
                   alignment:Alignment.center,

                 ),
               ),

             ),
             Expanded(
               flex: 1,
               child: InkWell(
                 onTap:() {
                   setState(() {
                     if(input.length==12){
                       input='';
                       value='';
                       presskey=0;
                       pressequal=0;
                       operator=0;
                       resultFinal='';
                       value1=0;
                       value2 = 0;
                     };


                     activity=1;
                     if (pressequal == 1 && value2 != null) {
                       input = '';
                       value = '';
                       presskey = 0;
                       pressequal = 0;
                       operator = 0;
                       resultFinal = '';
                       value2 = 0;
                     };
                     if (presskey == 1 && operator == 0) {
                       input = input + '+';
                       value1 = int.parse(value);
                       operator = operator + 1;
                       value = '';

                       print('Value 1 = $value1');
                     };
                   });
                 } ,
                 child: Container(
                   child:Text("+",style:TextStyle(fontSize:28.0,fontStyle:FontStyle.italic ,fontWeight:FontWeight.w900,
                     color:Colors.white,   ),
                   ),
                   color:Color(0xFFE91E63),
                   alignment:Alignment.center,

                 ),
               ),

             ),
           ],
           ),
         ),
        Expanded(
          flex: 1,
          child:Row(
         children:<Widget>[ Expanded(
            flex: 1,
            child: InkWell(
              onTap:(){
                setState(() {
                  if(input.length==12){
                    input='';
                    value='';
                    presskey=0;
                    pressequal=0;
                    operator=0;
                    resultFinal='';
                    value1=0;
                    value2 = 0;
                  };


                  if(pressequal==1 && value2!=null){
                    input='';
                    value='';
                    presskey=0;
                    pressequal=0;
                    operator=0;
                    resultFinal='';
                    value2 = 0;
                  };
                  presskey=1;
                  print('press 4');
                  input=input+'4';
                  value=value+'4';
                  print('Input is $input');
                  print('Value is $value');

                });
              } ,
              child: Container(
                child:Text("4",style:TextStyle(fontSize:28.0,fontStyle:FontStyle.italic ,
                  fontWeight:FontWeight.w900,
                  color:Colors.white,   ),
                ),
                color:Color(0xFFE91E63),
                alignment:Alignment.center,

              ),
            ),
         ),
           Expanded(
             flex: 1,
             child: InkWell(
               onTap:(){
                 setState(() {
                   if(input.length==12){
                     input='';
                     value='';
                     presskey=0;
                     pressequal=0;
                     operator=0;
                     resultFinal='';
                     value1=0;
                     value2 = 0;
                   };


                   if(pressequal==1 && value2!=null){
                     input='';
                     value='';
                     presskey=0;
                     pressequal=0;
                     operator=0;
                     resultFinal='';
                     value2 = 0;
                   };
                   presskey=1;
                   print('press 5');
                   input=input+'5';
                   value=value+'5';
                   print('Input is $input');
                   print('Value is $value');

                 });
               } ,

               child: Container(
                 child:Text("5",style:TextStyle(fontSize:28.0,fontStyle:FontStyle.italic ,fontWeight:FontWeight.w900,
                   color:Colors.white,   ),
                 ),
                 color:Color(0xFFD81860),
                 alignment:Alignment.center,

               ),
             ),

           ),
           Expanded(
             flex: 1,
             child: InkWell(
               onTap:(){
                 setState(() {
                   if(input.length==12){
                     input='';
                     value='';
                     presskey=0;
                     pressequal=0;
                     operator=0;
                     resultFinal='';
                     value1=0;
                     value2 = 0;
                   };


                   if(pressequal==1 && value2!=null){
                     input='';
                     value='';
                     presskey=0;
                     pressequal=0;
                     operator=0;
                     resultFinal='';
                     value2 = 0;
                   };
                   presskey=1;
                   print('press 6');
                   input=input+'6';
                   value=value+'6';
                   print('Input is $input');
                   print('Value is $value');

                 });
               } ,
               child: Container(
                 child:Text("6",style:TextStyle(fontSize:28.0,fontStyle:FontStyle.italic ,fontWeight:FontWeight.w900,
                   color:Colors.white,   ),
                 ),
                 color:Color(0xFFC21858),
                 alignment:Alignment.center,

               ),
             ),

           ),
           Expanded(
             flex: 1,
             child: InkWell(
               onTap:() {
                 setState(() {
                   if(input.length==12){
                     input='';
                     value='';
                     presskey=0;
                     pressequal=0;
                     operator=0;
                     resultFinal='';
                     value1=0;
                     value2 = 0;
                   };


                   activity=2;
                   if (pressequal == 1 && value2 != null) {
                     input = '';
                     value = '';
                     presskey = 0;
                     pressequal = 0;
                     operator = 0;
                     resultFinal = '';
                     value2 = 0;
                   };
                   if (presskey == 1 && operator == 0) {
                     input = input + '-';
                     value1 = int.parse(value);
                     operator = operator + 1;
                     value = '';

                     print('Value 1 = $value1');
                   };
                 });
               } ,
               child: Container(
                 child:Icon(Icons.remove,size:28,
                   color:Colors.white,   ),

                 color:Color(0xFFAD1457),
                 alignment:Alignment.center,

               ),
             ),

           ),
         ],
    ),
        ),

        Expanded(
          flex:1 ,
          child: Row(
            children:<Widget>[ Expanded(
              flex: 1,
              child: InkWell(
                onTap:(){
                  setState(() {
                    if(input.length==12){
                      input='';
                      value='';
                      presskey=0;
                      pressequal=0;
                      operator=0;
                      resultFinal='';
                      value1=0;
                      value2=0;
                    };


                    if(pressequal==1 && value2!=null){
                      input='';
                      value='';
                      presskey=0;
                      pressequal=0;
                      operator=0;
                      resultFinal='';
                      value2 = 0;
                    };
                    presskey=1;
                    print('press 7');
                    input=input+'7';
                    value=value+'7';
                    print('Input is $input');
                    print('Value is $value');

                  });
                } ,
                child: Container(
                  child:Text("7",style:TextStyle(fontSize:28.0,fontStyle:FontStyle.italic
                    ,fontWeight:FontWeight.w900,
                    color:Colors.white,   ),
                  ),
                  color:Color(0xFFAD1457),
                  alignment:Alignment.center,

                ),
              ),

            ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap:(){
                    setState(() {
                      if(input.length==12){
                        input='';
                        value='';
                        presskey=0;
                        pressequal=0;
                        operator=0;
                        resultFinal='';
                        value1=0;
                        value2=0;
                      };


                      if(pressequal==1 && value2!=null){
                        input='';
                        value='';
                        presskey=0;
                        pressequal=0;
                        operator=0;
                        resultFinal='';
                        value2 = 0;
                      };
                      presskey=1;
                      print('press 8');
                      input=input+'8';
                      value=value+'8';
                      print('Input is $input');
                      print('Value is $value');

                    });
                  } ,
                  child: Container(
                    child:Text("8",style:TextStyle(fontSize:28.0,fontStyle:FontStyle.italic ,
                      fontWeight:FontWeight.w900,
                      color:Colors.white,   ),
                    ),
                    color:Color(0xFFC21858),
                    alignment:Alignment.center,

                  ),
                ),

              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap:(){
                    setState(() {
                      if(input.length==12){
                        input='';
                        value='';
                        presskey=0;
                        pressequal=0;
                        operator=0;
                        resultFinal='';
                        value1=0;
                        value2=0;
                      };


                      if(pressequal==1 && value2!=null){
                        input='';
                        value='';
                        presskey=0;
                        pressequal=0;
                        operator=0;
                        resultFinal='';
                        value2=0;
                      };
                      presskey=1;
                      print('press 9');
                      input=input+'9';
                      value=value+'9';
                      print('Input is $input');
                      print('Value is $value');

                    });
                  } ,
                  child: Container(
                    child:Text("9",style:TextStyle(fontSize:28.0,fontStyle:FontStyle.italic ,fontWeight:FontWeight.w900,
                      color:Colors.white,   ),
                    ),
                    color:Color(0xFFD81860),
                    alignment:Alignment.center,

                  ),
                ),

              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap:() {
                    setState(() {
                      if(input.length==16){
                        input='';
                        value='';
                        presskey=0;
                        pressequal=0;
                        operator=0;
                        resultFinal='';
                        value2 = 0;
                      };


                      activity=3;
                      if (pressequal == 1 && value2 != null) {
                        input = '';
                        value = '';
                        presskey = 0;
                        pressequal = 0;
                        operator = 0;
                        resultFinal = '';
                        value2 = 0;
                      };
                      if (presskey == 1 && operator == 0) {
                        input = input + 'x';
                        value1 = int.parse(value);
                        operator = operator + 1;
                        value = '';

                        print('Value 1 = $value1');
                      };
                    });
                  } ,
                  child: Container(
                    child:Icon(Icons.clear,size:28,
                      color:Colors.white,   ),
                      color:Color(0xFFE91E63),
                      alignment:Alignment.center),
                ),


                ),



            ],
          ),
        ),
       Expanded(
         flex: 1,
         child: Row(children:<Widget>[
           Expanded(
             flex: 1,
             child: InkWell(
               onTap:(){
                 setState(() {
                   if(input.length==12){
                     input='';
                     value='';
                     presskey=0;
                     pressequal=0;
                     operator=0;
                     resultFinal='';
                     value1=0;
                     value2=0;
                   };


                   if(pressequal==1 && value2!=null){
                     input='';
                     value='';
                     presskey=0;
                     pressequal=0;
                     operator=0;
                     resultFinal='';
                     value2=0;
                   };
                   presskey=1;
                   print('press 0');
                   input=input+'0';
                   value=value+'0';
                   print('Input is $input');
                   print('Value is $value');

                 });
               } ,
               child: Container(
                 child:Text("0",style:TextStyle(fontSize:28.0,fontStyle:FontStyle.italic
                   ,fontWeight:FontWeight.w900,
                   color:Colors.white,   ),
                 ),
                 color:Color(0xFFE91E63),
                 alignment:Alignment.center,

               ),
             ),

           ),
           Expanded(
             flex: 1,
             child: InkWell(
               onTap: (){
                 setState(() {

                 });
               },
               child: InkWell(
                 onTap:(){
                   setState(() {
                     if(pressequal==1 && value2!=null){
                       input='';
                       value='';
                       presskey=0;
                       pressequal=0;
                       operator=0;
                       resultFinal='';
                       value2=0;
                     };

                   });
                 } ,
                 child: Container(
                   child:Text("C",style:TextStyle(fontSize:28.0,fontStyle:FontStyle.italic ,
                     fontWeight:FontWeight.w900,
                     color:Colors.white,   ),
                   ),
                   color:Color(0xFFD81860),
                   alignment:Alignment.center,

                 ),
               ),
             ),

           ),
           Expanded(
             flex: 1,
             child: InkWell(

               onTap: (){
                 setState(() {
                   if(input.length==12){
                     input='';
                     value='';
                     presskey=0;
                     pressequal=0;
                     operator=0;
                     resultFinal='';
                     value1=0;
                     value2=0;
                   };


                   pressequal=1;
                   value2=int.parse(value);
                   print('Value 2 is $value2');
                   if(activity==1 ){
                     result=value1+value2;
                     resultFinal='='+result.toString();

                     print('Result is $result');

                   };
                   if(activity==2 ){
                     result=value1-value2;
                     resultFinal='='+result.toString();

                     print('Result is $result');

                   };
                   if(activity==3 ){
                     result=value1*value2;
                     resultFinal='='+result.toString();

                     print('Result is $result');

                   };
                   if(activity==4 ){
                     if(value2==0){
                       resultFinal='Infinity';
                     };
                     if(value2!=0){
                     dresult=value1/value2;
                     resultFinal='='+dresult.toStringAsFixed(2);

                     print('Result is $result');};

                   };



                 });
               },
               child: Container(
                 child:Text("=",style:TextStyle(fontSize:28.0,fontStyle:FontStyle.italic ,fontWeight:FontWeight.w900,
                   color:Colors.white,   ),
                 ),
                 color:Color(0xFFC21858),
                 alignment:Alignment.center,

               ),
             ),

           ),
           Expanded(
             flex: 1,
             child: InkWell(
               onTap:() {
                 setState(() {
                   if(input.length==12){
                     input='';
                     value='';
                     presskey=0;
                     pressequal=0;
                     operator=0;
                     resultFinal='';
                     value1=0;
                     value2=0;
                   };


                   activity=4;
                   if (pressequal == 1 && value2 != null) {
                     input = '';
                     value = '';
                     presskey = 0;
                     pressequal = 0;
                     operator = 0;
                     resultFinal = '';
                     value2=0;
                   };
                   if (presskey == 1 && operator == 0) {
                     input = input + '/';
                     value1 = int.parse(value);
                     operator = operator + 1;
                     value = '';

                     print('Value 1 = $value1');
                   };
                 });
               } ,

               child: Container(
                 child:Text("/",style:TextStyle(fontSize:28.0,fontStyle:FontStyle.italic ,fontWeight:FontWeight.w900,
                   color:Colors.white,   ),
                 ),
                 color:Color(0xFFAD1457),
                 alignment:Alignment.center,

               ),
             ),

           ),
         ],
         ),
       ),
       ],
     ) ,

      ) ,

    );
  }
}
