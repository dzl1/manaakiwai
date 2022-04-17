import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/images.dart';
import '../../utils/size_config.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({
    Key? key,
    required this.child,required this.isScrollView,
  }) : super(key: key);
  final Widget child;
  final bool isScrollView;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics:isScrollView?const BouncingScrollPhysics():const NeverScrollableScrollPhysics(),
      child: Stack(
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 100,
            width: SizeConfig.widthMultiplier * 100,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.white,
                  const Color(0xFF73A1C2).withOpacity(0.5),
                  const Color(0xFF73A1C2),
                  const Color(0xFF199CB3)
                ])),
          ),
          Positioned(
            bottom: 0,
            right:SizeConfig.widthMultiplier*20,
              child: Image.asset(
            bottomMountains,
            color: kPrimaryColor.withOpacity(0.2),
            height: SizeConfig.heightMultiplier * 20,
          )),
          Center(child: child),
        ],
      ),
    );
  }
}
