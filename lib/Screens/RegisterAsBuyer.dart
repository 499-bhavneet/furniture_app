import 'package:FinoApp/CustomWidgets/CustomButtonWidgets.dart';
import 'package:FinoApp/CustomWidgets/CustomTextFieldWidget.dart';
import 'package:FinoApp/CustomWidgets/CustomTextWidget.dart';
import 'package:flutter/material.dart';

import '../AllText.dart';
import '../main.dart';
class RegisterAsBuyer extends StatefulWidget {
  const RegisterAsBuyer({Key key}) : super(key: key);

  @override
  _RegisterAsBuyerState createState() => _RegisterAsBuyerState();
}

class _RegisterAsBuyerState extends State<RegisterAsBuyer> {
  TextWidgets tw = TextWidgets();
  TextFieldWidgets tfw = TextFieldWidgets();
  ButtonWidgets bw = ButtonWidgets();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final key = GlobalKey<FormState>();
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            WELCOME_TO_REGISTER_AS_BUYER[LANGUAGE_TYPE],
            style: TextStyle(
              color: LIGHTPINK,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: LIGHTSKIN,
        body: Column(
          children: [
            tfw.myTextField(
              labletext: EMAIL[LANGUAGE_TYPE],
              borderradius: 7.3,
              prefixIcon: Icon(Icons.email),
              Controller: emailController,
              hinttext: EMAILHINT[LANGUAGE_TYPE],
              fillColor: Colors.brown.shade500,
            ),
            tfw.myTextField(
              labletext: PASSWORD[LANGUAGE_TYPE],
              borderradius: 7.3,
              prefixIcon: Icon(Icons.message),
              Controller: passwordController,
              fillColor: Colors.brown.shade500,
            ),
            Container(
              child: bw.buttonWidget(
                onpressed: () {
                  if (key.currentState.validate()) {
                    print("your data is submit");
                  }
                },
                text: SUBMIT[LANGUAGE_TYPE],
                color: LIGHTSKIN,
                borderradius: 13,
                shape: BorderRadius.circular(5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
