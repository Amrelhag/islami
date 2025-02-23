import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/style/reusable_components/AssetsManager.dart';
import 'package:islami/ui/Home/screen/homeScreen.dart';
import 'package:islami/ui/onboarding/pages/onboardingScreen.dart';
import 'package:islami/ui/sura_details/widget/PrefsHelperKeys.dart';

import '../../sura_details/widget/PrefsHelperOnBoarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
static const String routeName="Splash";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    super.initState();
    Timer(Duration(seconds: 2),
    (){
      bool? isFirstTime=LocalStorage.preferences.getBool(LocalStorageKeys.isFirstTimeRun)??true;

      Navigator.pushReplacementNamed(context,
          isFirstTime?
          onBoardingScreen.routeName
      :Homescreen.routeName);
    }
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Image.asset(Assetsmanager.splash,
        width: double.infinity,fit: BoxFit.fill,),

    );
  }
}
