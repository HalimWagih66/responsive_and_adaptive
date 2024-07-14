import 'package:flutter/cupertino.dart';

class SizeConfig{
  static double desktop = 1200;
  static double tablet = 800;
  static late double height , width;
  static void init(BuildContext context){
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}