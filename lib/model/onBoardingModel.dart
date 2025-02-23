
import 'package:islami/style/reusable_components/AssetsManager.dart';
class OnBoardingModel {

  String image;
  String title;
  String content;

  OnBoardingModel({required this.image,required this.title,required this.content});

static List<OnBoardingModel> onBoardingList =[

  OnBoardingModel(image: Assetsmanager.onBoarding1
  ,title: "",
  content: "Welcome To Islmi App"),
  OnBoardingModel(image: Assetsmanager.onBoarding2
  ,title: "Welcome To Islami",
  content: "We Are Very Excited To Have You In Our Community"),
  OnBoardingModel(image: Assetsmanager.onBoarding3
  ,title: "Reading the Quran",
  content: "Read, and your Lord is the Most Generous"),
  OnBoardingModel(image: Assetsmanager.onBoarding4
  ,title: "Bearish",
  content: "Praise the name of your Lord, the Most High"),
  OnBoardingModel(image: Assetsmanager.onBoarding5
  ,title: "Holy Quran Radio",
  content: "You can listen to the Holy Quran Radio through the application for free and easily"),

];

}