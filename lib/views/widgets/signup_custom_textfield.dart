import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../utils/size_config.dart';

class SignUpCustomTextField extends StatelessWidget {
  const SignUpCustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 1,bottom:SizeConfig.heightMultiplier*1),
          child: Text(
            hintText,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: SizeConfig.textMultiplier * 1.4,
                color: kPrimaryColor),
          ),
        ),
        Container(
          height: SizeConfig.heightMultiplier*6,
          width: SizeConfig.widthMultiplier * 80,
          margin: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 1.5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(40)),
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4,vertical: SizeConfig.heightMultiplier*0.6),
          child: TextField(
              style: TextStyle(
                fontSize: SizeConfig.textMultiplier * 1.8,
              ),
              controller: controller,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Choose a $hintText...",
                  hintStyle: TextStyle(
                      color: kblueTextColor,
                      fontSize: SizeConfig.textMultiplier * 1.8,
                      fontWeight: FontWeight.w500))),
        ),
      ],
    );
  }
}
