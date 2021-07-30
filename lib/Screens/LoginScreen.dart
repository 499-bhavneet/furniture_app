import 'package:FinoApp/CustomWidgets/CustomButtonWidgets.dart';
import 'package:FinoApp/CustomWidgets/CustomTextFieldWidget.dart';
import 'package:FinoApp/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../AllText.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextFieldWidgets tfw = TextFieldWidgets();
  ButtonWidgets bw = ButtonWidgets();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: WHITE,
          body: body(),
        ),
    );
  }

  body() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(13, 33, 13, 5),
          child: Image.asset("assets/LoginScreen/login2.png",
          height: 310,
          width: 300,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(7, 18, 7, 5),
          child: tfw.myTextField(
              labletext: EMAIL[LANGUAGE_TYPE],
            hinttext: EMAILHINT[LANGUAGE_TYPE],
            fillColor: LIGHTPINK,
            borderradius: 13,
            prefixIcon: Icon(Icons.email),
          )

        ),
        Container(
            padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
            child: tfw.myTextField(
              labletext: PASSWORD[LANGUAGE_TYPE],
              hinttext: PASSWORD_HINT[LANGUAGE_TYPE],
              fillColor: LIGHTPINK,
              borderradius: 13,
              prefixIcon: Icon(Icons.remove_red_eye_rounded),
            )
        ),
        Container(
          height: 60,
         width: 350,
         child: bw.buttonWidget(
            onpressed: (){},
            text: SUBMIT[LANGUAGE_TYPE],
            color: PINK,
            borderradius: 28,
            shape: BorderRadius.circular(10),),
        ),
      ],
    );
  }
}
