import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import '../Ourwidgets/button.dart';
import '../Ourwidgets/socials.dart';
import '../Ourwidgets/textfield.dart';
import '../styles/base.dart';
import '../styles/text.dart';
import '../styles/textfields.dart';
import '../styles/colors.dart';
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
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
    var height = MediaQuery
        .of(context)
        .size
        .height * 0.2;
    var width = MediaQuery
        .of(context)
        .size
        .width * 0.9;
    return ListView(
      padding: EdgeInsets.all(0.0),
      children: <Widget>[
        Container(
          height: height,
          width: width * 1,
          child: Image.asset('assets/img_1.png',
            // height: height,
            // width:width*1,
          ),
        ),
        Container(
          width: width,
          height: height * 1.5,
          child: Image.asset('assets/img.png',
          ),
        ),
        AppTextField(
          isIOS: Platform.isIOS,
          hintText: 'Email',
          cupertinoIcon: CupertinoIcons.mail_solid,
          materialIcon: Icons.email,
          textInputType: TextInputType.emailAddress,
          obscureText: false,
        ),
        AppTextField(
          isIOS: Platform.isIOS,
          hintText: 'Password',
          cupertinoIcon: IconData(0xf4c9, fontFamily: CupertinoIcons.iconFont,
              fontPackage: CupertinoIcons.iconFontPackage),
          materialIcon: Icons.lock_open_sharp,
          obscureText: true,
          textInputType: TextInputType.visiblePassword,
        ),
        AppButton(buttonText: 'Login',buttonType: ButtonType.LightBlue,),
        Center(child: Text('OR',style: TextStyles.suggestion),),
        Padding(
          padding: BaseStyles.listPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AppSocialButton(socialType: SocialType.Facebook,),
              AppSocialButton(socialType: SocialType.Google),
            ],),
        ),
        Padding(
          padding: BaseStyles.listPadding,
          child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: 'New Here? ',
                  style: TextStyles.body,
                  children: [
                    TextSpan(
                        text: 'SignUp',
                        style: TextStyles.strawButton,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.pushNamed(context, '/signup')
                    )
                  ]
              )
          ),
        )
      ],
    );
  }

}