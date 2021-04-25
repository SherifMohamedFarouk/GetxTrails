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
      getPages: [
        GetPage(name: "/", page:() =>  MyApp()),
        GetPage(name: "home",page: () => Home(),),
        GetPage(name: "screen/:someValue",page:() => NextScreen(),transition: Transition.leftToRight,)
      ],
      home: MyHome ()
    );
  }
}

class MyHome extends StatelessWidget {
  var count = 0.obs;
  var student = Student()  ;
  // var count =RxInt(0);
  Controller controller = Get.put(Controller());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navgation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(()=>Text("${controller.student.name}")),
            // ignore: deprecated_member_use
            ElevatedButton(child: Text("count ++"),
              onPressed: () {
               // Get.toNamed("home?channel=this is home&content=getx",);
                controller.caps();
              },
              style:ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
              ),
            ),

          ],

        ),
      ),
    );
  }
}
