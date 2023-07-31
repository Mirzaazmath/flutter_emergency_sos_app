import 'package:apollo/data/cause_data.dart';
import 'package:apollo/res/color_res.dart';
import 'package:apollo/utils/text_utils.dart';
import 'package:flutter/material.dart';

import '../utils/bottomsheet_utils.dart';
class HomeScreen extends StatelessWidget {
 const   HomeScreen({super.key});
 @override
  Widget build(BuildContext context) {
    AppColor  color =AppColor();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                profileBottomSheet(context);
              },
              child: Row(
                children: [
                  Container(
                    margin:const  EdgeInsets.only(right: 10),
                    height: 50,
                  width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage("assets/profile.webp"),fit: BoxFit.fill
                      )
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NormalText(text: "Dev_73arner!",size: 13,),
                      const SizedBox(height: 5,),
                      NormalText(text: "Complete profile",color: Theme.of(context).primaryColor,size: 13,)
                    ],
                  ),

                ],
              ),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NormalText(text: "India",size: 13,),
                    const SizedBox(height: 5,),
                    NormalText(text: "See your location",color: Theme.of(context).primaryColor,size: 13,)
                  ],
                ),
                Icon(Icons.location_on,color: Theme.of(context).primaryColor,)

              ],
            )

          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            BoldText(text: "Emergency help needed?",size: 30,),
          // const  SizedBox(height: 10,),
            Spacer(),
            NormalText(text: "Just hold the button to call",size: 16,),
          //  const  SizedBox(height: 20,),
            Spacer(),
            Container(
              height: 200,
              width: 200,
              padding:const EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:const  Color(0xffbcbecb),
                border: Border.all(color: color.white,width: 2),
                boxShadow: [
                  BoxShadow(
                    color:color.lightgrey,
                    offset: const Offset(5,15),
                    blurRadius: 20
                  ),
                  BoxShadow(
                      color:color.white,
                      offset: const Offset(-5,-8),
                      blurRadius: 10
                  )
                ]
              ),
              child:   Container(
                height: 200,
                width: 200,
                padding:const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xfffe5c5c),
                        Color(0xffdf0100),
                      ]
                    ),
                    boxShadow: [
                      BoxShadow(
                          color:Color(0xff7d8291),
                          offset:  Offset(5,5),
                          blurRadius: 10
                      ),
                      BoxShadow(
                          color:Color(0xff7d8291),
                          offset:  Offset(-5,-5),
                          blurRadius: 10
                      )
                    ]
                ),
                child: Icon(Icons.crisis_alert,size: 60,color: color.white,),
              ),
            ),
          // const  SizedBox(height: 30,),
            Spacer(),
            BoldText(text: "Not sure what to do?",size: 20,),
           // const  SizedBox(height: 10,),
            Spacer(),
            NormalText(text: "Pick the subject to chat",size: 16,),
          //  const  SizedBox(height: 30,),
            Spacer(),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: causelist.length,
                  itemBuilder: (context,index){
                return Container(
                  height: 100,
                  width: 140,
                  margin:const  EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    color: color.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  padding:const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BoldText(text: causelist[index].title,size: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_forward,color: Theme.of(context).primaryColor,),
                          Icon( causelist[index].icon,color: color.lightgrey,size: 30,)
                        ],
                      )

                      
                    ],
                  ),
                );
              }),
            ),
            Spacer(),



          ],
        ),
      ),

    );
  }
}
