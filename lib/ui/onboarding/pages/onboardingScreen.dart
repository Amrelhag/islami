import 'package:flutter/material.dart';
import 'package:islami/model/onBoardingModel.dart';
import 'package:islami/style/reusable_components/AssetsManager.dart';
import 'package:islami/style/reusable_components/colors.dart';
import 'package:islami/ui/Home/screen/homeScreen.dart';
import 'package:islami/ui/onboarding/widgets/onBoardingWidget.dart';
import 'package:islami/ui/sura_details/widget/PrefsHelperKeys.dart';
import 'package:islami/ui/sura_details/widget/PrefsHelperOnBoarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingScreen extends StatefulWidget {
  static const String routeName="OnBoardingScreens";
  const onBoardingScreen({super.key});


  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
  int activeIndex=0;
  PageController controller=PageController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  LocalStorage.preferences.setBool(LocalStorageKeys.isFirstTimeRun,false);
  }

  @override
  Widget build(BuildContext context) {
   Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorManager.secondary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(Assetsmanager.logo,fit: BoxFit.fitWidth,
                  height:  size.height*0.25),

              Expanded(
                  child:PageView.builder(
                    controller: controller,
                    onPageChanged: (index){
                      activeIndex=index;
                      setState(() {

                      });
                    },
                    itemCount: OnBoardingModel.onBoardingList.length,
                    itemBuilder: (context,index){
                      OnBoardingModel onboarding=OnBoardingModel.onBoardingList[index];
                      return OnBoardingWidget(onBoardingModel: onboarding,);
                    },
                  )),

              Row (mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed:(){
controller.previousPage(duration: Duration(milliseconds: 500),
    curve: Curves.easeInOut,
);
if(activeIndex< OnBoardingModel.onBoardingList.length) {
  activeIndex--;
}
setState(() {

});
                  }, child:Visibility(visible: activeIndex!=0,
                    child: Text("Back",style: TextStyle(
                      color: ColorManager.primary,
                      fontFamily: "janna",
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                    ),),
                  )),
                  AnimatedSmoothIndicator(
                    activeIndex: activeIndex,
                    count: OnBoardingModel.onBoardingList.length,
                    effect:  ExpandingDotsEffect (
                      activeDotColor: ColorManager.primary
                    ),
                  ),

                  TextButton(onPressed:(){

                    if(activeIndex==OnBoardingModel.onBoardingList.length-1){
                      Navigator.pushReplacementNamed(context, Homescreen.routeName);
                      return;
                    }

                    controller.nextPage(duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                    if(activeIndex< OnBoardingModel.onBoardingList.length) {
                      activeIndex++;
                    }
                    setState(() {

                    });
                  }, child:Text(activeIndex==OnBoardingModel.onBoardingList.length-1
                    ?"Finish"
                    :"Next",style: TextStyle(

                      color: ColorManager.primary,
                      fontFamily: "janna",
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                  ),))
                ],
              ),
              SizedBox(height: 16,),
            ],
          ),
        ),
      ),
    );
  }
}
