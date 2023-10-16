import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dimensions{
  static double screenHeight(BuildContext context)=>
      MediaQuery.of(context).size.height;
  static double screenWidth(BuildContext context)=>
      MediaQuery.of(context).size.width;

  static double heightPercentage(BuildContext context, percentage)=>
      screenHeight(context)* percentage/100;
  static double widthPercentage(BuildContext context, percentage)=>
      screenWidth(context)* percentage/100;

  static double fontSize(BuildContext context,percentage)=>
      screenHeight(context)* percentage/100;
  static double radius(BuildContext context,percentage)=>
      screenHeight(context)* percentage/100;
}