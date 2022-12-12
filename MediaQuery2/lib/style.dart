import 'dart:ui';
import 'package:flutter/material.dart';

TextStyle HeadLine(context){
  var width= MediaQuery.of(context).size.width;
  if( width<600){
    //mobile
    return TextStyle(
      fontSize:35,
      color:Colors.green,
      fontWeight:FontWeight.w900,
    );

  }
  else{
    //desktop
    return TextStyle(
      fontSize:65,
      color:Colors.pink,
      fontWeight:FontWeight.bold,
    );
  }

}