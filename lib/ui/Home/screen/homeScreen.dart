
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/style/reusable_components/AssetsManager.dart';
import 'package:islami/style/reusable_components/StringsManager.dart';
import 'package:islami/style/reusable_components/colors.dart';
import 'package:islami/ui/Home/tabs/HadithTab.dart';
import 'package:islami/ui/Home/tabs/QuranTab.dart';
import 'package:islami/ui/Home/tabs/RadioTab.dart';
import 'package:islami/ui/Home/tabs/SebhaTab.dart';
import 'package:islami/ui/Home/tabs/TimeTab.dart';

class Homescreen extends StatefulWidget {
   Homescreen({super.key});
static const String routeName="Home";

  @override
  State<Homescreen> createState() => HomescreenState();
}

class HomescreenState extends State<Homescreen> {
int selectedIndex=0;
List<Widget> tabs =[
  QuranTab(),
  HadithTab(),
  SebhaTab(),
  RadioTab(),
  TimeTab(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: ColorManager.secondary,
resizeToAvoidBottomInset:false ,
bottomNavigationBar: NavigationBar(
  selectedIndex: selectedIndex,
    onDestinationSelected:(index){
    setState(() {
      selectedIndex=index;
    });
    } ,
  backgroundColor: ColorManager.primary,
    indicatorColor: ColorManager.navItemBack,
    //only show label for the selected item
    labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
    destinations: [
NavigationDestination(
icon:SvgPicture.asset(Assetsmanager.quran,
colorFilter: ColorFilter.mode(ColorManager.secondary,
    BlendMode.srcIn),
) ,selectedIcon: SvgPicture.asset(Assetsmanager.quran,
  colorFilter: ColorFilter.mode(ColorManager.tertiary,
      BlendMode.srcIn),
) ,
        label:StringsManager.quran ),


      NavigationDestination(
          icon:SvgPicture.asset(Assetsmanager.ahaeth,
            colorFilter: ColorFilter.mode(ColorManager.secondary,
                BlendMode.srcIn),
          ) ,selectedIcon: SvgPicture.asset(Assetsmanager.ahaeth,
        colorFilter: ColorFilter.mode(ColorManager.tertiary,
            BlendMode.srcIn),
      ) ,
          label:StringsManager.ahadeth ),


      NavigationDestination(
          icon:SvgPicture.asset(Assetsmanager.sebha,
            colorFilter: ColorFilter.mode(ColorManager.secondary,
                BlendMode.srcIn),
          ) ,selectedIcon: SvgPicture.asset(Assetsmanager.sebha,
        colorFilter: ColorFilter.mode(ColorManager.tertiary,
            BlendMode.srcIn),
      ) ,
          label:StringsManager.sebha ),


      NavigationDestination(
          icon:SvgPicture.asset(Assetsmanager.radio,
            colorFilter: ColorFilter.mode(ColorManager.secondary,
                BlendMode.srcIn),
          ) ,selectedIcon: SvgPicture.asset(Assetsmanager.radio,
        colorFilter: ColorFilter.mode(ColorManager.tertiary,
            BlendMode.srcIn),
      ) ,
          label:StringsManager.radio ),


      NavigationDestination(
          icon:SvgPicture.asset(Assetsmanager.time,
            colorFilter: ColorFilter.mode(ColorManager.secondary,
                BlendMode.srcIn),
          ) ,selectedIcon: SvgPicture.asset(Assetsmanager.time,
        colorFilter: ColorFilter.mode(ColorManager.tertiary,
            BlendMode.srcIn),
      ) ,
          label:StringsManager.Time ),


    ]
),
body: tabs[selectedIndex],


    );
  }
}
