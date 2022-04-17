
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manaakiwai/views/pages/home/home.dart';
import '../controllers/auth_controller.dart';
import '../views/pages/auth flow/login/login.dart';

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<AuthController>(
        // init: Get.find<UserController>(),
        initState: (_) {
      Get.put<AuthController>(AuthController());
    }, builder: (_) {
      _.getUser();
      if (Get.find<AuthController>().users!=null) {
       
        return const HomePage();
      } else {
        return const LoginPage();
      }
    });
  }
}
