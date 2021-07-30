import 'package:FinoApp/AllText.dart';
import 'package:FinoApp/CustomWidgets/CustomTextFieldWidget.dart';
import 'package:FinoApp/CustomWidgets/CustomTextWidget.dart';
import 'package:FinoApp/Screens/IntroSlider.dart';
import 'package:FinoApp/main.dart';
import 'package:flutter/material.dart';

class SorBScreen extends StatefulWidget {
  const SorBScreen({Key key}) : super(key: key);

  @override
  _SorBScreenState createState() => _SorBScreenState();
}

class _SorBScreenState extends State<SorBScreen> {
  TextFieldWidgets tfw = TextFieldWidgets();
  TextWidgets tw = TextWidgets();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: WHITE,
        appBar: AppBar(
          backgroundColor: PINK,
          title: Text(REGISTER_AS[LANGUAGE_TYPE],
            style: TextStyle(
              color: WHITE,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
        ),
        body: Column(
          children: [
            Container(
              height: 500,
              width: 400,
              child: Image.asset("assets/LoginScreen/LOGIN.jpg"),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff4B4433),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  height: 60,
                  width: 280,
                  child: tw.boldText(
                      text: BUYER[LANGUAGE_TYPE], color: WHITE, size: 35,alignment:TextAlign.center,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IntroSlider(),
                    ));
              },
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff4B4433),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    height: 60,
                    width: 280,
                    child: tw.boldText(
                        text: SELLER[LANGUAGE_TYPE], color: WHITE, size: 35,alignment: TextAlign.center)),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IntroSlider(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
