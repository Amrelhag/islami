import 'package:islami/model/SuraModel.dart';
import 'package:islami/style/reusable_components/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefHelper{
  static late  SharedPreferences prefs;
 static init()async{
  prefs = await SharedPreferences.getInstance();
}
  static addRecentList(List<SuraModel> mostRecentList){
   // using map to convert list of SuraModel to string
   List<String> mostRecentStringList =mostRecentList.map((sura)=>sura.suraNameEn).toList();
prefs.setStringList("mostRecent", mostRecentStringList);
  }
  static List<SuraModel> getRecentList(){
List<String> mostStringsList = prefs.getStringList("mostRecent")??[]; //nullable

    List<SuraModel> mostRecent =[];   //empty list to store the object of suraFound
    for(String suraName in mostStringsList){
      SuraModel suraFound= suraList.firstWhere((sura)=>sura.suraNameEn==suraName);
 mostRecent.add(suraFound);
    }
return mostRecent;
  }
}