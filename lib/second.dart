import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${Get.arguments['greeting']},${Get.arguments['name']}"),
            TextButton(
              onPressed: () => Get.back(),
              child: const Text('Go back'),
            ),
          ],
        )
      ),
    );
  }
}
