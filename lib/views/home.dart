
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${Get.parameters['content']}"),),
      body: Container(
        child: ElevatedButton(child: Text("next Screen"),
          onPressed: () {
            Get.toNamed("screen/1234");
          },
        ) ,

      ),
    );
  }
}
