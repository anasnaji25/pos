import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/src/controllers/home_controllers.dart';
import 'package:pos/src/controllers/recent_order_controller.dart';
import 'package:pos/src/views/home_view/home_view.dart';
import 'package:pos/src/views/splash_view/splash_screen_view.dart';

void main() {
  Get.put(HomeController());
  Get.put(RecentOrderController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'POS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreenView(),
    );
  }
}
