import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import '../styles/textfields.dart';
import '../styles/colors.dart';
class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    if (Platform.isIOS){
      return CupertinoPageScaffold(
        child: pageBody(context),
      );
    } else {
      return Scaffold(
        body: pageBody(context),
      );
    }
  }

  Widget pageBody(BuildContext context) {
    var height= MediaQuery.of(context).size.height*0.2;
    var width= MediaQuery.of(context).size.width*0.9;
    return ListView(
      padding: EdgeInsets.all(0.0),
      children: <Widget>[
        Container(
          height: height,
          width:width*1,
          child:Image.asset('assets/img_1.png',
            // height: height,
            // width:width*1,
          ),
        ),
        Container(
          width:width,
            height: height*1.5,
            child:Image.asset('assets/img.png',
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: TextFieldStyles.textBoxHorizontal,
              vertical: TextFieldStyles.textBoxVertical
          ),
          child: email(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: TextFieldStyles.textBoxHorizontal,
              vertical: TextFieldStyles.textBoxVertical
          ),
          child: password(),
        ),
      ],
    );
  }

  Widget email(){
    if (Platform.isIOS){
      return CupertinoTextField();
    } else {
      return TextField(
        keyboardType: TextInputType.emailAddress,
        cursorColor: TextFieldStyles.cursorColor,
        style:TextFieldStyles.text,
        textAlign: TextFieldStyles.textAlign,
        decoration: TextFieldStyles.materialDecoration('Email', Icons.email),
      );
    }
  }

  Widget password(){
    if (Platform.isIOS){
      return CupertinoTextField();
    } else {
      return TextField(
        keyboardType: TextInputType.visiblePassword,
        cursorColor: TextFieldStyles.cursorColor,
        style:TextFieldStyles.text,
        textAlign: TextFieldStyles.textAlign,
        decoration: TextFieldStyles.materialDecoration('Password', Icons.lock_open_sharp),
      );
    }
  }
}