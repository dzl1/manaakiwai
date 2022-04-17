import 'package:flutter/material.dart';
import 'package:manaakiwai/views/widgets/steps_circle.dart';

import '../../constants/colors.dart';
import '../../utils/size_config.dart';

class StepsWidget extends StatelessWidget {
  const StepsWidget({
    Key? key,
    required this.dashColor,
    required this.subTitleColor,
    required this.title,
    required this.subTitle,
    required this.img,
    required this.press,
  }) : super(key: key);
  final Color dashColor, subTitleColor;
  final String title, subTitle;
  final Widget img;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 5,bottom:SizeConfig.heightMultiplier*2),
        child: Row(
          children: [
            StepCircleWidget(
              borderColor: kPrimaryColor,
                child: img),
            SizedBox(width: SizeConfig.widthMultiplier * 3),
            Container(
              height: SizeConfig.heightMultiplier * 4.5,
              width: SizeConfig.widthMultiplier * 2.2,
              color: dashColor
            ),
            SizedBox(width: SizeConfig.widthMultiplier * 3),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                title.toUpperCase(),
                  style: TextStyle(
                      fontSize: SizeConfig.textMultiplier * 1.6,
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor),
                ),
               
                SizedBox(
                  width: SizeConfig.widthMultiplier *68,
                  child: Text(
                    subTitle,
                    style: TextStyle(
                      color:subTitleColor,
                      fontSize: SizeConfig.textMultiplier * 1.3,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}