import 'package:flutter/material.dart';
import 'package:islami/model/HadithModel.dart';

import '../../../style/reusable_components/AssetsManager.dart';
import '../../../style/reusable_components/colors.dart';

class HadithDetailsScreen extends StatelessWidget {
 static const String routeName= "Hadith";
  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HadithModel hadithModel=ModalRoute.of(context)!.settings.arguments as HadithModel;
    return Scaffold(
      backgroundColor: ColorManager.secondary,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
            color: ColorManager.primary
        ),
        backgroundColor: Colors.transparent,
        title: Text(hadithModel.title,style: TextStyle(
            color: ColorManager.primary,
            fontWeight: FontWeight.w700,
            fontSize: 24
        ),),
      ),

      body: //Text(suraText),
      Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 18,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(Assetsmanager.maskleft_corner,color: ColorManager.primary,),
                      Text(hadithModel.title,style: TextStyle(
                          color: ColorManager.primary,
                          fontFamily: "janna",
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                      ),),
                      Image.asset(Assetsmanager.maskright_corner,color: ColorManager.primary),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Text(hadithModel.content,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center
                        ,style: TextStyle(
                            color: ColorManager.primary,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            fontFamily: "janna"
                        ),),
                    ),
                  ),


                ],
              ),
            ),
          ),
          Image.asset(Assetsmanager.Maskmosque,fit: BoxFit.cover,
            width:double.infinity,)
        ],
      ),
    );
    ;
  }
}
