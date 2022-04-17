import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../utils/size_config.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.press,
    required this.w,
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  final double w;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed : press,
      color: kPrimaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: Container(
        height: SizeConfig.heightMultiplier * 6,
        width: w,
        // decoration: BoxDecoration(
        //     color: kPrimaryColor, borderRadius: BorderRadius.circular(40)),
        child: Center(
            child: Text(
          title.toUpperCase(),
          style: TextStyle(
              fontSize: SizeConfig.textMultiplier * 2,
              color: Colors.white,
              fontWeight: FontWeight.w600),
        )),
      ),
    );
  }
}
