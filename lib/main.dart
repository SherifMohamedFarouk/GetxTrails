import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_app/views/home.dart';
import 'package:getx_app/views/next_screen.dart';

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
      home: MyHome()
    );
  }
}
class MyHome extends StatelessWidget {
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
            // ignore: deprecated_member_use
            ElevatedButton(child: Text("hey"),
              onPressed: () {
               Get.toNamed("home?channel=this is home&content=getx",);

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
