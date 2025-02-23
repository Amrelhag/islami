import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/Home/screen/homeScreen.dart';
import 'package:islami/ui/PrefsHelper.dart';
import 'package:islami/ui/hadith_details/screen/hadithdetails_screen.dart';
import 'package:islami/ui/onboarding/pages/onboardingScreen.dart';
import 'package:islami/ui/splash/screen/splash_screen.dart';
import 'package:islami/ui/sura_details/screen/suradetails_screen.dart';
import 'package:islami/ui/sura_details/widget/PrefsHelperOnBoarding.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(

      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light));
  await LocalStorage.init();
  await PrefHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
 debugShowCheckedModeBanner: false,
      routes: { SplashScreen.routeName: (_) => SplashScreen(),
        onBoardingScreen.routeName:(_)=>onBoardingScreen(),
        Homescreen.routeName:(_)=>Homescreen(),
        SuraDetailsScreen.routeName:(_)=>SuraDetailsScreen(),
        HadithDetailsScreen.routeName:(_)=>HadithDetailsScreen(),


      },
      initialRoute: SplashScreen.routeName,
      );

}
}


