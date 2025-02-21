import 'package:flutter/material.dart';
import 'package:islami/model/SuraModel.dart';
import 'package:islami/style/reusable_components/AssetsManager.dart';
import 'package:islami/style/reusable_components/colors.dart';
import 'package:islami/ui/sura_details/screen/suradetails_screen.dart';

class RecentlySura extends StatelessWidget {
  final SuraModel suraModel;
  const RecentlySura({required this.suraModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap:(){
      Navigator.pushNamed(context, SuraDetailsScreen.routeName,arguments:suraModel);
    } ,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorManager.primary,

        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all( 17),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(suraModel.suraNameEn,style: TextStyle(
                    fontFamily: "janna",
                    color: ColorManager.secondary,
                    fontSize: 24,
                    fontWeight: FontWeight.w700
                  ),),

                  Text(suraModel.suraNameAr,style: TextStyle(
                    fontFamily: "janna",
                    color: ColorManager.secondary,
                    fontSize: 24,
                    fontWeight: FontWeight.w700
                  ),),

                  Text("${suraModel.suraVersesNumber} verses",style: TextStyle(
                    fontFamily: "janna",
                    color: ColorManager.secondary,
                    fontSize: 14,
                    fontWeight: FontWeight.w700
                  ),),
                ],
              ),
            ),

      Image.asset(Assetsmanager.quran_card)
          ],
        ),
      ),
    );
  }
}
