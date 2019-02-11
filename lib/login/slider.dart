import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class TheSlider extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 250.0,
      child: new Carousel(
        images: [
          new ExactAssetImage("assets/img/home1.jpeg"),
          new ExactAssetImage("assets/img/home2.jpeg"),
          new ExactAssetImage("assets/img/home3.jpeg"),
          new ExactAssetImage("assets/img/home4.jpeg")
        ],
        dotSize: 4.0,
        dotSpacing: 15.0,
        dotColor: Colors.blueGrey,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.transparent,
        borderRadius: false,
        noRadiusForIndicator: true,
        overlayShadow: true,
        overlayShadowColors: Colors.white,
        overlayShadowSize: 0.7,
      )
    );
  }
}