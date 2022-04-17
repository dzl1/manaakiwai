import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../utils/size_config.dart';


class AddJourneyTextField extends StatelessWidget {
  const AddJourneyTextField(
      {Key? key,
      required this.maxLinesOfText,
      required this.maxLinesOfHint,
      required this.isSuffixIcon,
      required this.controller,
      required this.hintText,
      required this.heading,
      required this.isTextFieldEnable,
      required this.borderRadius})
      : super(key: key);
  final int maxLinesOfText, maxLinesOfHint;
  final bool isSuffixIcon, isTextFieldEnable;
  final TextEditingController controller;
  final String hintText, heading;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: SizeConfig.widthMultiplier * 5,
          top: SizeConfig.heightMultiplier * 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading.toUpperCase(),
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: SizeConfig.textMultiplier * 1.2,
                color: kPrimaryColor),
          ),
          SizedBox(height: SizeConfig.heightMultiplier * 0.5),
          Container(
            width: SizeConfig.widthMultiplier * 90,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(borderRadius)),
            child: Padding(
              padding: EdgeInsets.only(
                  right: SizeConfig.widthMultiplier * 2,
                  top: SizeConfig.heightMultiplier * 0.5,
                  bottom: SizeConfig.heightMultiplier * 0.5,
                  left: SizeConfig.widthMultiplier * 5),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      enabled: isTextFieldEnable,
                      controller: controller,
                      maxLines: maxLinesOfText,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.textMultiplier * 2.6),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: hintText,
                        hintMaxLines: maxLinesOfHint,
                        hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.w500,
                            fontSize: SizeConfig.textMultiplier * 2.6),
                      ),
                    ),
                  ),
                  isSuffixIcon
                      ? const Icon(Icons.location_on,
                          color: Colors.white, size: 38)
                      : const SizedBox()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
