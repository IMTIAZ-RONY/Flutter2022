import 'package:flutter/material.dart';

InputDecoration AppInputStyle (label) {
  return InputDecoration(
    contentPadding:EdgeInsets.fromLTRB(20,10, 10, 20),
    filled:true,
    fillColor:Colors.lime,
    border:OutlineInputBorder(borderRadius:BorderRadius.circular(10) ) ,
    labelText:label,
  );

}
TextStyle HeadTextStyle(){
  return TextStyle(
    color:Colors.pink,
    fontSize:30,
    fontWeight: FontWeight.w900,
  );
}
ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
    backgroundColor:Colors.green,
    shape:RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10)) )
    
  );
}