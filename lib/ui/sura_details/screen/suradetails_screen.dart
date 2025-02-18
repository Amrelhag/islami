
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/model/SuraModel.dart';
import 'package:islami/style/reusable_components/AssetsManager.dart';
import 'package:islami/style/reusable_components/colors.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName="suradetails";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  String suraText='';

  @override
  Widget build(BuildContext context) {
    SuraModel suraModel= ModalRoute.of(context)!.settings.arguments as SuraModel;
if(suraText.isEmpty){
  loadFile(suraModel.suraNumber.toString());

}

    return Scaffold(
      backgroundColor: ColorManager.secondary,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: ColorManager.primary
        ),
        backgroundColor: Colors.transparent,
        title: Text(suraModel.suraNameEn,style: TextStyle(
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
                       Text(suraModel.suraNameAr,style: TextStyle(
                         color: ColorManager.primary,
                         fontFamily: "janna",
                         fontSize: 24,
                         fontWeight: FontWeight.w700
                       ),),
                       Image.asset(Assetsmanager.maskright_corner,color: ColorManager.primary),
                     ],
                   ),
                   Expanded(
                     child: suraText.isEmpty
                         ?Center(
                       child: CircularProgressIndicator(color: ColorManager.primary,),
                     )
                         :SingleChildScrollView(
                       child: Text(suraText,
                         textDirection: TextDirection.rtl,
                         textAlign: TextAlign.center
                         ,style: TextStyle(
                             color: ColorManager.primary,
                             fontWeight: FontWeight.w700,
                             fontSize: 20,
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
  }

  loadFile(String suraNumber)async{
  suraText= await rootBundle.loadString("assets/files/$suraNumber.txt");  //Future is non blocking code

  List<String> lines = suraText.split("\n");
  String temp="";
  for(int i=0;i<lines.length;i++){
temp+=lines[i].trim();
temp+="(${i+1})";
  }
  suraText=temp;
         setState(() {

         });//Multithreading in operating system, operate multiple programs in the same time
  }
}
