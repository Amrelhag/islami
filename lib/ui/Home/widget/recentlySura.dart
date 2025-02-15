import 'package:flutter/material.dart';
import 'package:islami/style/reusable_components/AssetsManager.dart';
import 'package:islami/style/reusable_components/colors.dart';

class RecentlySura extends StatelessWidget {
  const RecentlySura({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                Text("Al-Anbiya",style: TextStyle(
                  fontFamily: "janna",
                  color: ColorManager.secondary,
                  fontSize: 24,
                  fontWeight: FontWeight.w700
                ),),

                Text("الانبياء",style: TextStyle(
                  fontFamily: "janna",
                  color: ColorManager.secondary,
                  fontSize: 24,
                  fontWeight: FontWeight.w700
                ),),

                Text("112 verses",style: TextStyle(
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
    );
  }
}
