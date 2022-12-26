import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/src/views/auth_view/login_view.dart';
import 'package:pos/src/views/home_view/home_view.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    redirectTONext();
  }

  redirectTONext() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAll(() => LoginView());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/icons/pos_logo.png"),
      ),
    );
  }
}
