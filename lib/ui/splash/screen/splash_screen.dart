import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/style/reusable_components/AssetsManager.dart';
import 'package:islami/ui/Home/screen/homeScreen.dart';

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
      Navigator.pushReplacementNamed(context, Homescreen.routeName);
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
