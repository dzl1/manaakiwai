import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/images.dart';
import '../../../../utils/size_config.dart';

class AboutAppWidget extends StatelessWidget {
  const AboutAppWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.widthMultiplier * 5,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 8,
            width: SizeConfig.widthMultiplier * 16,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(appLogo), fit: BoxFit.cover),
                shape: BoxShape.circle),
          ),
          SizedBox(width: SizeConfig.widthMultiplier * 3),
          Container(
              height: SizeConfig.heightMultiplier * 30,
              width: SizeConfig.widthMultiplier * 2.2,
              color: kPrimaryColor),
          SizedBox(width: SizeConfig.widthMultiplier * 3),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About the app".toUpperCase(),
                style: TextStyle(
                    fontSize: SizeConfig.textMultiplier * 1.6,
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 1),
              SizedBox(
                width: SizeConfig.widthMultiplier * 68,
                child: Text(
                  "Maunga Taniwha Ki Rangaunu Trust .Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of “de Finibus Bonorum et Malorum” (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, “Lorem ipsum dolor sit amet..”, comes from a line in section 1.10.32.",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: SizeConfig.textMultiplier * 1.3,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
