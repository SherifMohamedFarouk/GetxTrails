
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NextScrren"),),
      body: Container(
        child: ElevatedButton(child: Text("${Get.parameters['someValue']}"),
          onPressed: () {
            Get.back();
          },
        ) ,

      ),
    );
  }
}
