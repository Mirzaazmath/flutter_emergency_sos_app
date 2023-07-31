

import 'package:flutter/cupertino.dart';

import '../utils/text_utils.dart';

Widget smallInfoContainer(String title,IconData icon, Color color,String sub1,String sub2){
  return   Container(
    height: 100,
    padding:const  EdgeInsets.all(10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NormalText(text: title),
            Icon(icon,size: 20,color: color)
          ],
        ),
        Row(

          children: [
            BoldText(text: sub1,size: 20,),
            BoldText(text: sub2),
          ],
        )
      ],
    ),

  );
}