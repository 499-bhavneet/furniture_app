import 'package:FinoApp/CustomWidgets/CustomButtonWidgets.dart';
import 'package:FinoApp/CustomWidgets/CustomTextWidget.dart';
import 'package:FinoApp/Modals/IntroSliderClass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../AllText.dart';
import '../main.dart';

class IntroSlider extends StatefulWidget {
  const IntroSlider({Key key}) : super(key: key);

  @override
  _IntroSliderState createState() => _IntroSliderState();
}

class _IntroSliderState extends State<IntroSlider>
    with SingleTickerProviderStateMixin {
  List<IntroSliderClass> tabs = [
    IntroSliderClass(
        image: "assets/IntroSlider/1.png",
        title: GOOD_QUALITY[LANGUAGE_TYPE],
        subtitle: HELPING_YOU_GET_THE_BEST_QUALITY[LANGUAGE_TYPE]),
    IntroSliderClass(
        image: "assets/IntroSlider/2.png",
        title: Add_TO_CART[LANGUAGE_TYPE],
        subtitle: YOU_CAN_ADD_YOUR_PRODUCTS_IN_YOUR_CART[LANGUAGE_TYPE]),
    IntroSliderClass(
        image: "assets/IntroSlider/3.png",
        title: EASY_PAYMENT[LANGUAGE_TYPE],
        subtitle: SAFER_SECURED_FASTER[LANGUAGE_TYPE]),
    IntroSliderClass(
        image: "assets/IntroSlider/4.png",
        title: FAST_DELIVERY[LANGUAGE_TYPE],
        subtitle: FASTER_IS_ALWAYS_BETTER[LANGUAGE_TYPE]),
  ];
  TabController tabController;
  int currentIndex = 0;
  TextWidgets tw = TextWidgets();
  ButtonWidgets bw = ButtonWidgets();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this);
    tabController.addListener(() {
      setState(() {
        currentIndex = tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: body(),
      ),
    );
  }

  body() {
    return Column(
      children: [
        Expanded(
          child: TabBarView(
            children:
                List.generate(tabs.length, (index) => sliderContent(index)),
            controller: tabController,
          ),
        ),
        bottom(),
        SizedBox(
          height: 26,
        ),
      ],
    );
  }

  bottom() {
    return Column(
      children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 85,),
              Column(
                children: [
                     Row(
                      children: List.generate(tabs.length, (index) => indicator(index)),
                    ),
                ],
              ),
            ],
          ),

        InkWell(
          onTap: () {
            if (currentIndex < tabs.length - 1) {
              tabController.animateTo(currentIndex + 1,
                  duration: Duration(milliseconds: 700),
                  curve: Curves.easeIn);
            } else {
              //move to another screen
            }
          },
          child: Container(
            padding: EdgeInsets.fromLTRB(35, 13, 35, 13),
            decoration: BoxDecoration(
              color: PINK,
              borderRadius: BorderRadius.circular(23),
            ),
            child: tw.boldText(
              text: GET_STARTED[LANGUAGE_TYPE],
              size: 13,
              color: WHITE,
            ),
          ),
        ),
      ],
    );
  }

  sliderContent(int index) {
    return Column(
      children: [
        Expanded(
          flex: 13,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 1),
              child: Image.asset(
                tabs[index].image,
                height: 570,
                width: 320,
              ),
            ),
          ),
        ),

           Expanded(
             flex: 5,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 SizedBox(
                   height:5,
                 ),
                 tw.boldText(
                   text: tabs[index].title,
                   color: BLACKISH,
                   size: 23,
                 ),
                 SizedBox(
                   height: 14,
                 ),

                 tw.regularText(
                   text: tabs[index].subtitle,
                   color: GREY,
                   size: 13,
                 ),
               ],
             ),
           ),
      ],
    );
  }

  indicator(int index) {
    return Container(
      decoration: BoxDecoration(
        color: currentIndex == index ? PINK : PINK.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5)
      ),
      height: 23,
      width: 7,
      margin: EdgeInsets.only(right: 7),
    );
  }
}
