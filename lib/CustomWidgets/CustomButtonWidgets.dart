import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../main.dart';

class ButtonWidgets{

  buttonWidget({dynamic text,Color color,dynamic shape, dynamic onpressed,double borderradius}){

    return Container(
      child: FlatButton(
          child: Text(text is Map? text[LANGUAGE_TYPE]:text),
            onPressed: () {},
            color: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderradius),
            ),
      ),
    );
  }
}