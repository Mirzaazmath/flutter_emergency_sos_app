import 'package:apollo/res/color_res.dart';
import 'package:apollo/utils/text_utils.dart';
import 'package:flutter/material.dart';
import '../components/small_info_conatiner.dart';

/// bottom sheet
void profileBottomSheet(context){
  showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (BuildContext context,
            StateSetter setmodelState /*You can rename this!*/) {
          return Container(
            height:  MediaQuery.of(context).size.height*0.85,
            padding: const EdgeInsets.all(20),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Column(

                         children: [
                           NormalText(text: "Profile data:"),
                           NormalText(text: "60%")
                         ],
                       ),

                        NormalText(text: "Edit",color: Theme.of(context).primaryColor,),
                      ],
                    ),
                    Container(

                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage("assets/profile.webp"),fit: BoxFit.fill
                          )
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                BoldText(text: "Dev_73arner",size: 22,),
                const SizedBox(height: 10,),
                NormalText(text: '30 June 1996'),
                const SizedBox(height: 20,),
              const   Divider(),
                SizedBox(height: 80,
                child: Row(children: [
                  Expanded(child: smallInfoContainer("Age :",Icons.calendar_today,AppColor().lightgreen,"28 ","year")),
                 const VerticalDivider(),
                  Expanded(child: smallInfoContainer("Blood type :",Icons.water_drop,Theme.of(context).primaryColor,"ORh","+")),

                ],

                ),),
                const   Divider(),
                SizedBox(height: 80,
                  child: Row(children: [
                    Expanded(child: smallInfoContainer("Height :",Icons.straighten,AppColor().lightblue,"185 ","cm")),
                    const VerticalDivider(),
                    Expanded(child: smallInfoContainer("Weight :",Icons.scale,AppColor().lightpurple,"80 ","kg")),

                  ],

                  ),),
                const   Divider(),
             const    SizedBox(height: 20,),
                BoldText(text: "Allergies and reactions",size: 16,),
                const SizedBox(height: 10,),
                NormalText(text: 'Food :'),
                const   Divider(),
                SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      BoldText(text: "Grape"),
                     const SizedBox(width: 30,),
                     const  VerticalDivider(),
                      const SizedBox(width: 30,),
                      NormalText(text: "Blocked nose"),
                    ],
                  ),

                ),
                const   Divider(),

         ],
            ),
          );
        });
      });
}

