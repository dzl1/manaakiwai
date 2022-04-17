import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../../../constants/colors.dart';
import '../../../../../utils/size_config.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    Key? key,
    required this.title,
    required this.icon,required this.press,
  }) : super(key: key);
  final String title;
  final String icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:press,
      child: Column(
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 7,
            width: SizeConfig.widthMultiplier * 14,
            decoration:
                const BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
            child: Center(
                child: title == "MYMSD"
                    ? Text(
                        "myMSD",
                        style: TextStyle(
                            fontSize: SizeConfig.textMultiplier * 1.2,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )
                    : WebsafeSvg.asset(icon,
                        height: title == "Google" || title == "Twitter"
                            ? SizeConfig.heightMultiplier * 3
                            : SizeConfig.heightMultiplier * 3.7)),
          ),
          SizedBox(height: SizeConfig.heightMultiplier * 1),
          Text(
            title.toUpperCase(),
            style: TextStyle(
                fontSize: SizeConfig.textMultiplier * 1.2,
                fontWeight: FontWeight.w700,
                color: Colors.white),
          )
        ],
      ),
    );
  }
}

