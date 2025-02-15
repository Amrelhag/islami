import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/Home/screen/homeScreen.dart';
import 'package:islami/ui/splash/screen/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light));
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
        Homescreen.routeName:(_)=>Homescreen(),

      },
      initialRoute: SplashScreen.routeName,
      );

}
}


