import 'package:get/get.dart';
import 'package:getx_app/views/student.dart';
class Controller extends GetxController{
  var student= Student();

  void caps(){
    student.name.value = student.name.value.capitalizeFirst;
  }


}