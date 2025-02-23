import 'package:flutter/material.dart';
import 'package:islami/style/reusable_components/colors.dart';

import '../../../style/reusable_components/AssetsManager.dart';

class SebhaTab extends StatefulWidget {
   SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter=0;
  int index=0;
  double angle=0;
  List<String> azkarList=["سبحان الله","الحمد لله","لا إله إلا الله","الله أكبر"];

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;

    return  Container(
      decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage(Assetsmanager.sebha_Background),
              fit:BoxFit.cover  )
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(Assetsmanager.logo,
              height: size.height*0.15,),
              SizedBox(height: 16,),
              Center(
                child: Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى ",style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                  color: ColorManager.tertiary,
                  fontFamily: "janna"
                ),),
              ),

SizedBox(height: 16,),
              Center(
                child: GestureDetector(onTap: (){
onSebhaTab();
                },
                  child: Stack(
                    children: [
                    Container(
                        margin: EdgeInsets.only(
                          left: size.height*0.15
                        ),
                        child: Image.asset(Assetsmanager.sebhaHead,
                        height: size.height*0.15,
                        )),

                    Stack(alignment: Alignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.only(
                              top: size.height*0.11
                            ),
                            child: Transform.rotate(angle: angle,
                              child: Image.asset(Assetsmanager.sebhaBody,
                              width: size.width*0.80,
                              height: size.width*0.80,
                                fit: BoxFit.fill,
                              ),
                            )),
                  SizedBox(height: 20,),
                        Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 25

                              ),
                              child: Text(azkarList[index],style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 36,
                                  fontFamily: "janna",
                                  color: ColorManager.tertiary
                              ),),
                            ),

                            Text("$counter",style: TextStyle(
                              color: ColorManager.tertiary,
                              fontSize: 36,
                              fontWeight: FontWeight.w700,

                            ),),

                          ],
                        )

                      ],
                    ),

                    ],
                  ),
                ),
              ),
              Spacer()

            ],
          ),
        ),
      ),

    ) ;


  }
  onSebhaTab(){
    counter++;
    angle-=2;
    if(counter==33){
      counter=0;
      index++;
      if(index==4)index=0;
    }
    setState(() {

    });
  }
}
