import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidgets{


  myTextField({dynamic labletext,double borderradius,dynamic helperText,dynamic prefixIcon, dynamic Controller, dynamic hinttext, Color fillColor,}) {

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: TextField(
          decoration: InputDecoration(
            labelText: labletext,
            prefixIcon: prefixIcon,
            hintText: hinttext,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderradius),
            ),
            helperText: helperText,
          ),
        ),
      ),
    );
  }
}