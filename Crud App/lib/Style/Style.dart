import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

const colorRed=Color.fromRGBO(231, 28, 36, 1);
const colorGreen=Color.fromRGBO(33, 191, 115, 1);
const colorWhite=Color.fromRGBO(255,255, 255, 1);
const colorDarkBlue=Color.fromRGBO(44,62,80, 1);


SliverGridDelegateWithFixedCrossAxisCount ProductGridViewStyle(){
  return SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing:2 ,
    mainAxisExtent:250 ,
  );
}





void ErrorToast(msg){
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
  );
}

void SuccessToast(msg){
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0
  );
}








SvgPicture ScreenBackground(context){
 return SvgPicture.asset(
  'lib/assets/images/screen-back.svg',
  alignment:Alignment.center ,
    width:MediaQuery.of(context).size.width ,
    height:MediaQuery.of(context).size.height ,
    fit:BoxFit.cover ,
  );
}




InputDecoration AppInputDecoration(label){
  return InputDecoration(
    focusedBorder: const OutlineInputBorder(
      borderSide: const BorderSide(color:Colors.green,width:1),
    ),
    fillColor:Colors.white ,
    filled:true ,
    contentPadding:EdgeInsets.fromLTRB(20, 10, 10, 20),
    enabledBorder:  const OutlineInputBorder(
  borderSide: const BorderSide(color:Colors.white,width:0),
  ),
  border: OutlineInputBorder(),
    labelText:label ,
  );
}



DecoratedBox AppDropDownStyle(child){
  return DecoratedBox(
    decoration:BoxDecoration(
      color:Colors.white,border:Border.all(color:colorWhite,width: 1, ),
      borderRadius:BorderRadius.circular(4) ,
    ) ,
    child:Padding(
        padding:EdgeInsets.only(left:30,right:30 ),
    child:child ,
    ),
  );
}

ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
    elevation:1,
    padding:EdgeInsets.all(0),
    backgroundColor:Colors.transparent ,
    shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(6), ) ,

  );
}
Ink SuccessButtonChild(ButtonText){
  return Ink(
    decoration:BoxDecoration(color:Colors.green ,
        borderRadius:BorderRadius.circular(6),
    ) ,
    child:Container(
      height:45 ,
      alignment:Alignment.center ,
      child:Text(ButtonText,style:TextStyle(
        fontWeight:FontWeight.w400,fontSize:15,
      ) ,) ,
    ) ,

  );
}