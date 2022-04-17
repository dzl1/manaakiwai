import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../utils/size_config.dart';

class StepCircleWidget extends StatelessWidget {
  const StepCircleWidget({
    Key? key,
    required this.child,required this.borderColor,
  }) : super(key: key);
  final Widget child;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: SizeConfig.heightMultiplier * 8,
        width: SizeConfig.widthMultiplier * 16,
        decoration: BoxDecoration(
            border: Border.all(
              width: 3,
              color: borderColor,
            ),
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [Color.fromARGB(255, 13, 73, 100), Colors.black]),
            shape: BoxShape.circle),
        child: Center(child: child));
  }
}
