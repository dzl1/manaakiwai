import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manaakiwai/constants/images.dart';
import 'package:manaakiwai/utils/root.dart';

import '../../../utils/size_config.dart';
import '../../widgets/loading.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 3),
        () => Get.off(() => const Root(),
            transition: Transition.leftToRight));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //APP LOGO
          Image.asset(appLogo, height: SizeConfig.heightMultiplier * 40),
          SizedBox(height: SizeConfig.heightMultiplier * 4),
          //LOADING SIGN
          LoadingWidget(),
        ],
      ),
    );
  }
}
