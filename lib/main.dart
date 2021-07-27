import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_app/views/controller.dart';
import 'package:getx_app/views/home.dart';
import 'package:getx_app/views/next_screen.dart';
import 'package:getx_app/views/student.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Navgation",
        initialRoute: "/",
        defaultTransition: Transition.zoom,
        home: MyHome());
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("dialog trail"),
       ),
       body: Center(
         child: Container(
           height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               ElevatedButton(onPressed: (){
                 Get.defaultDialog(
                   content: Row(
                     children: [
                       CircularProgressIndicator()
                       ,
                       SizedBox(width: 16.0,),
                       Expanded(child: Text("loadding)"))

                     ],
                   )
                 );
               }, child:Text("show dialog"),


               )
             ],
           ),
         ),
       ),
     );
  }

  }

