import 'dart:async';
import 'package:flutter/material.dart';
import '../Theme.dart';
import 'IntroSlider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => IntroSlider(),));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: GREY,
      body: body(),
      ),
    );
  }

  body() {
    return Column(
      children: [
    Center(
    child: Image.asset("assets/IntroSlider/SplashScreen.png",
      height: 770,
      width: 190,
    ),
    ),
    CircularProgressIndicator(
    valueColor: AlwaysStoppedAnimation(WHITE)
    ),
    ]
    );
  }
}