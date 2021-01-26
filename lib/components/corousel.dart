import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:sephorature_app/constant.dart';

SizedBox buildCarousel() {
  return SizedBox(
    height: 200.0,
    width: double.infinity,
    child: Carousel(
      dotSize: 5.0,
      dotSpacing: 16.0,
      dotColor: warnaPrimerLight,
      indicatorBgPadding: 5.0,
      dotBgColor: Colors.black.withOpacity(0.1),
      dotVerticalPadding: 5.0,
      dotPosition: DotPosition.bottomLeft,
      images: [
        Image.asset(
          "assets/images/2.jpg",
          fit: BoxFit.cover,
        ),
        Image.asset(
          "assets/images/3.jpg",
          fit: BoxFit.cover,
        ),
        Image.asset(
          "assets/images/4.jpg",
          fit: BoxFit.cover,
        ),
        Image.asset(
          "assets/images/5.jpg",
          fit: BoxFit.cover,
        ),
      ],
    ),
  );
}
