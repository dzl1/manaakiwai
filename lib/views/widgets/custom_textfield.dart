import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../utils/size_config.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.widthMultiplier * 70,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(40)),
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
      child: TextField(
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 1.8,
          ),
          controller: controller,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "$hintText...",
              hintStyle: TextStyle(
                  color: kblueTextColor,
                  fontSize: SizeConfig.textMultiplier * 1.8,
                  fontWeight: FontWeight.w500))),
    );
  }
}
