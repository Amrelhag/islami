import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/model/SuraModel.dart';
import 'package:islami/style/reusable_components/AssetsManager.dart';

class SuraWidget extends StatelessWidget {
  final SuraModel suraModel;
  SuraWidget({required this.suraModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(alignment: Alignment.center,

          children:[ SvgPicture.asset(Assetsmanager.sura_number,
          height: 52,
          width: 52,),
            Text(suraModel.suraNumber,style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              fontFamily: "janna",
              color: Colors.white
            ),),
    ],
        ),

        SizedBox(width: 24,),
        Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(suraModel.suraNameEn,style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  fontFamily: "janna",
                  color: Colors.white
              ),),
              Text("${suraModel.suraVersesNumber} verses",style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  fontFamily: "janna",
                  color: Colors.white
              ),),
            ],
          ),
        ),
        

        Text(suraModel.suraNameAr, style: TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20,
    fontFamily: "janna",
    color: Colors.white
    ),)

      ],
    );
  }
}
