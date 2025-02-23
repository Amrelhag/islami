import 'package:flutter/material.dart';
import 'package:islami/model/HadithModel.dart';
import 'package:islami/style/reusable_components/colors.dart';

import '../../../style/reusable_components/AssetsManager.dart';
import '../../hadith_details/screen/hadithdetails_screen.dart';

class HadithWidget extends StatelessWidget {
 final HadithModel hadithModel;
  const HadithWidget({super.key,required this.hadithModel});

  @override
  Widget build(BuildContext context) {
    return InkWell( onTap: (){
      Navigator.pushNamed(context, HadithDetailsScreen.routeName,
          arguments:hadithModel );
    },
      child: Container(margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorManager.primary,
        ),
        child: Column(
          children: [
             Column(
               children: [
                 SizedBox(height: 15,),
                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(Assetsmanager.maskleft_corner,color: ColorManager.secondary,),

                         Text(hadithModel.title,style: TextStyle(
                            color: ColorManager.secondary,
                            fontFamily: "janna",
                            fontSize:
                             20,
                            fontWeight: FontWeight.w700
                        ),),

                      Image.asset(Assetsmanager.maskright_corner,color: ColorManager.secondary),
                    ],
                  ),
               ],
             ),


        Expanded(
          child: Stack(
              alignment: Alignment.center,
              children:[
            Image.asset(Assetsmanager.HadithCardBack),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text("${hadithModel.content}...",
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,maxLines: 10
                ,style: TextStyle(
                    color: ColorManager.secondary,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    fontFamily: "janna"
                ),),
            ),
      ]
          ),
        ),
            SizedBox(height: 16,),
            Image.asset(Assetsmanager.Maskmosque,
              width:double.infinity,color: ColorManager.secondary,)
          ],
        ),
      ),
    );
  }
}
