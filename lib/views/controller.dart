import 'package:get/get.dart';
import 'package:getx_app/views/student.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Controller extends GetxController{
  var count = 0.obs;
  var myString = 'English';


  changeLanguage() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('stringValue', "abc");
  }
  getStringValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    String stringValue = prefs.getString('stringValue');
    return stringValue;
  }
  void increment() async{
  this.count++;
  update(['count']);
  }

void cleanUp(){
    print("cleaned");
}
  void onInit() {

  }
}