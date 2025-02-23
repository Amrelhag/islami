import 'package:flutter/material.dart';

import '../../../model/onBoardingModel.dart';
import '../../../style/reusable_components/colors.dart';

class OnBoardingWidget extends StatelessWidget {
  OnBoardingModel onBoardingModel;
   OnBoardingWidget({super.key,required this.onBoardingModel});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(onBoardingModel.image,
          height: size.height*0.40,),
        Text(onBoardingModel.title,style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,fontFamily: "janna",
            color: ColorManager.primary
        ),),
        Text(onBoardingModel.content,
          textAlign: TextAlign.center
          ,style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,fontFamily: "janna",
              color: ColorManager.primary
          ),)
      ],
    );
  }
}
