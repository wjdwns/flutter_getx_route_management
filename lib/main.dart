import 'package:flutter/material.dart';
import 'package:flutter_getx_route_management/second.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const MyHomePage()),
        GetPage(
          name: '/second',
          page: () => const Second(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds:400),
          curve: Curves.fastOutSlowIn,
          popGesture: true,
        )
      ],
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text('Next Screen'),
          onPressed: () => Get.toNamed('/second', arguments: {
            "greeting": "Hello",
            "name": " World",
          }),
        ),
      ),
    );
  }
}
