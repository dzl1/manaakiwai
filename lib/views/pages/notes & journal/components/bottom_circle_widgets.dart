import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../../utils/size_config.dart';

class BottomCircleWidgets extends StatelessWidget {
  const BottomCircleWidgets({
    Key? key,
    required this.img,
    required this.borderColor,
    required this.height,
    required this.width,
    required this.mainColor,
  }) : super(key: key);
  final String img;
  final Color borderColor, mainColor;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [mainColor, Colors.black]),
          shape: BoxShape.circle,
          border: Border.all(
              color: borderColor,
              width: height == SizeConfig.heightMultiplier * 5 ? 2 : 0.5)),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: WebsafeSvg.asset(img, color: borderColor),
      ),
    );
  }
}
