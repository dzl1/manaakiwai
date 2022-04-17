import 'package:flutter/material.dart';

import '../../utils/size_config.dart';

class UpperGradientContainer extends StatelessWidget {
  const UpperGradientContainer({
    Key? key,
    required this.child,required this.height,
  }) : super(key: key);
  final Widget child;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: SizeConfig.widthMultiplier * 100,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                const Color(0xFF73A1C2).withOpacity(0.5),
                const Color(0xFF73A1C2).withOpacity(0.8),
                const Color(0xFF199CB3).withOpacity(0.6)
              ]),
          borderRadius:
              const BorderRadius.only(bottomLeft: Radius.circular(50))),
      child: child,
    );
  }
}
