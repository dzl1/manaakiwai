import 'package:flutter/material.dart';
import '../../../../constants/icons.dart';
import '../../../../utils/size_config.dart';
import '../../notes & journal/components/bottom_circle_widgets.dart';

class BottomMaratakaButtons extends StatelessWidget {
  const BottomMaratakaButtons({
    Key? key,required this.press,
  }) : super(key: key);
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.widthMultiplier * 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: press,
            child: BottomCircleWidgets(
              height: SizeConfig.heightMultiplier * 5,
              width: SizeConfig.widthMultiplier * 10,
              borderColor: const Color(0xFF0094FF),
              mainColor: const Color.fromARGB(255, 13, 73, 100),
              img: notes1,
            ),
          ),
          InkWell(
             onTap:press,
            child: BottomCircleWidgets(
              height: SizeConfig.heightMultiplier * 5,
              width: SizeConfig.widthMultiplier * 10,
              borderColor: const Color(0xFF23A518),
              img: notes2,
              mainColor: const Color.fromARGB(255, 13, 73, 100),
            ),
          ),
          InkWell(
             onTap: press,
            child: BottomCircleWidgets(
              height: SizeConfig.heightMultiplier * 5,
              width: SizeConfig.widthMultiplier * 10,
              borderColor: const Color(0xFFFC881F),
              mainColor: const Color.fromARGB(255, 13, 73, 100),
              img: notes3,
            ),
          )
        ],
      ),
    );
  }
}
