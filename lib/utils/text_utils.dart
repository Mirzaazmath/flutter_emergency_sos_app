import 'package:apollo/res/color_res.dart';
import 'package:flutter/material.dart';

// Normal Text

class NormalText extends StatelessWidget {
final  String text;
final  Color? color;
final  double? size;
NormalText({required this.text,this.size,this.color});
@override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: color??AppColor().lightgrey,fontSize: size??14),);
  }
}

// -/Normal Text

// Bold Text

class BoldText extends StatelessWidget {
  final  String text;
  final  Color? color;
  final  double? size;
   BoldText({required this.text,this.size,this.color});
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: color??AppColor().darkgrey,fontSize: size??14,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,);
  }
}
// -/Bold Text