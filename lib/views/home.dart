
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home"),),
      body: Container(
        child: ElevatedButton(child: Text("${Get.arguments}"),
          onPressed: () {
            Get.back();
          },
        ) ,

      ),
    );
  }
}
