import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../main.dart';


class TextWidgets{

  regularText(
        {dynamic text, double size, Color color, TextAlign alignment,int maxLines, TextOverflow textOverflow}) {
      return Container(
          child: Text(text is Map ? text[LANGUAGE_TYPE] : text,
            style: TextStyle(
              fontSize: size,
              color: color,
              fontFamily: "Regular",
            ),
            textAlign: alignment ?? TextAlign.start,
            maxLines: maxLines,
            overflow: textOverflow,
          )
      );
    }

  boldText({dynamic text, double size, Color color, TextAlign alignment, int maxLines, TextOverflow textOverflow}) {
    return Container(
        child: Text(text is Map?text[LANGUAGE_TYPE]:text,
          style: TextStyle(
            fontSize: size,
            color: color,
            fontFamily: "Bold",
          ),
          textAlign: alignment??TextAlign.start,
          maxLines: maxLines,
          overflow: textOverflow,
        )
    );
  }
  }