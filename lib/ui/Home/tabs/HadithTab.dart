import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/model/HadithModel.dart';
import 'package:islami/ui/Home/widget/HadithWidget.dart';
import 'package:islami/ui/hadith_details/screen/hadithdetails_screen.dart';

import '../../../style/reusable_components/AssetsManager.dart';

class HadithTab extends StatefulWidget {
   HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
PageController controller=PageController(viewportFraction: 0.9);
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadFile();
  }
  @override
  Widget build(BuildContext context) {

    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(Assetsmanager.ahadethBackground,
        ),fit: BoxFit.fitHeight)
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(Assetsmanager.logo,),),

          SizedBox(height: 55,),
          Expanded(
            child:
            ahadeth.isEmpty
              ?Center(child: CircularProgressIndicator(),)
            :PageView.builder(itemBuilder: (context,index)=>HadithWidget(
              hadithModel: ahadeth[index],
            ),
            itemCount: ahadeth.length,
            controller: controller,),
          )
        ],
      ),
    );
  }

  List<HadithModel> ahadeth=[];

  int hadtheCounter=1;

  void loadFile()async{
        //for hadeth

for(int i=1;i<=50;i++){
  String text =await rootBundle.loadString("assets/hadeethfile/h$i.txt");
  List<String>tempAHadeth= text.trim().split("\n");

  if (tempAHadeth.isEmpty) continue; // Skip empty lines
  String title = tempAHadeth[0].trim(); // First line is the title
  List<String> contentLines = tempAHadeth.sublist(1); // Rest is content
  String content = contentLines.join(" ").trim(); // Join content


ahadeth.add((HadithModel(title: title,content: content)));     // to fill my list


}
setState(() {

});
  }
}
