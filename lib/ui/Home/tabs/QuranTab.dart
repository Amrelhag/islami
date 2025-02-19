import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/model/SuraModel.dart';
import 'package:islami/style/reusable_components/AssetsManager.dart';
import 'package:islami/style/reusable_components/StringsManager.dart';
import 'package:islami/style/reusable_components/colors.dart';
import 'package:islami/style/reusable_components/constants.dart';
import 'package:islami/ui/Home/widget/recentlySura.dart';
import 'package:islami/ui/Home/widget/suraWidget.dart';

class QuranTab extends StatefulWidget {

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
List<SuraModel> filterList=[];

String searchValue="";
List<SuraModel> mostRecentlyList =[];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Container(width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage(Assetsmanager.quran_Background),
              fit:BoxFit.fill  )
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(alignment: Alignment.center,
                    child: Image.asset(Assetsmanager.logo)),

                SizedBox(height: 21,),

                TextField(onChanged: (value){
                  setState(() {
                    searchSura(value);
                    searchValue=value;
                  });
                },
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: ColorManager.SearchTextColor,
                    fontFamily: "janna"
                  ),
                  decoration: InputDecoration(
                  filled: true,
                    fillColor: Color.fromRGBO(33, 33, 33, 0.6),
                    hintText: "Enter sura name",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      fontFamily: "janna",
                      color: ColorManager.SearchTextColor
                    ),

                    prefixIconConstraints: BoxConstraints(
                      maxHeight: 54,
                      maxWidth: 54
                    ),
                    prefixIcon: Padding(padding:EdgeInsets.all(14) ,
                      child: SvgPicture.asset(Assetsmanager.quran
                    ),
                  ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: ColorManager.primary,
                      )
                    ),
                    focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: ColorManager.primary,
                        )
                    )
                  ),
                ),

                SizedBox(height: 20,),

                //most recently text
                if(searchValue.isEmpty)  //list inside children list
              ...[
                  Text(StringsManager.mostRecently,
                  style:TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: ColorManager.SearchTextColor,
    ) ,),
                SizedBox(height: 10,),

                //list view of most recently
                Expanded(
                  child: ListView.separated(
                      scrollDirection:Axis.horizontal ,
                      itemBuilder: (context,index)=>RecentlySura(
                        suraModel: mostRecentlyList[index],
                      ),
                      separatorBuilder: (context,index)=>SizedBox(width: 10,),
                      itemCount: mostRecentlyList.length),
                ),

                SizedBox(height: 10,),

                // sura list text
                Text(StringsManager.suraList,
                  style:TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: ColorManager.SearchTextColor
                  ) ,),
                SizedBox(height: 10,),
                 ] ,

if(searchValue.isNotEmpty)
  SizedBox(height: 25,),
                //sura list
                Expanded(
                    flex: 2,
                    child:              //most recently
                ListView.separated(
                    itemBuilder: (context,index)=>SuraWidget(
                      addToRecent: (){
                        mostRecentlyList.insert(0 ,searchValue.isNotEmpty
                            ?filterList[index]
                            :suraList[index],);
                        setState(() {

                        });
                      },
                      suraModel: searchValue.isNotEmpty
                      ?filterList[index]
                      :suraList[index],),
                    separatorBuilder:(context,index)=>Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 44
                      ),
                      child: Divider(
                        height: 63,       //height between each sura
                      ),
                    ),
                    itemCount:searchValue.isNotEmpty
                ? filterList.length
                : suraList.length)),


              ],
            ),
          ),
        ),
      ),
    ) ;
  }

  searchSura(String searchText){
    filterList=[];
   // for(int i=0 ;i<suraList.length;i++){
   //   if(suraList[i].suraNameEn.contains(searchText)||suraList[i].suraNameAr.contains(searchText)){
   //     filterList.add(suraList[i]);
   //
   //   }
   // }

// function that make a loop
   filterList= suraList.where((element)=>
    element.suraNameEn.toLowerCase().contains(searchText.toLowerCase())
        ||element.suraNameAr.contains(searchText.toLowerCase())).toList();

  }
}
