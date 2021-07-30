import 'package:FinoApp/Screens/RegisterAsBuyer.dart';
import 'package:FinoApp/Screens/SorB%20Screen.dart';
import 'package:FinoApp/Theme.dart';
import 'package:flutter/material.dart';
import 'Screens/IntroSlider.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/SplashScreen.dart';

void main(){
  return runApp(
    MaterialApp(
      home: SorBScreen(),
      theme: ThemeData(
        accentColor: GREY,
      ),
    ),
  );
}

String LANGUAGE_TYPE= 'en';
Color WHITE = Colors.white;
Color PINK = Color(0xffFF2E65);
Color BLACKISH = Color(0xff2B2B30);
Color LIGHTPINK = Color(0xffF4717F);
Color LIGHTSKIN = Color(0xffd9c8c0);
Color VERYLIGHT = Color(0xffd9c8c0);
Color LIGHTBROWN = Color(0xffd9c8c0);
Color GREY = Color(0xffbbb0b8);
Color SKIN = Color(0xffD9C8C0);

