import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';
import '../../../../utils/size_config.dart';
import '../../../widgets/upper_gradient_container.dart';

class UpdatesUpperContainer extends StatelessWidget {
  const UpdatesUpperContainer({
    Key? key,
    required this.date,
    required this.heading,
  }) : super(key: key);
  final String date, heading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: SizeConfig.heightMultiplier * 5,
          bottom: SizeConfig.heightMultiplier * 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: kPrimaryColor,
                size: 30,
              )),
          Column(
            children: [
              Text(
                heading.toUpperCase(),
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: SizeConfig.textMultiplier * 4),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 0.2),
              Text(
                date.toUpperCase(),
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: SizeConfig.textMultiplier * 2),
              ),
            ],
          ),
          SizedBox(width: SizeConfig.widthMultiplier * 10),
        ],
      ),
    );
  }
}
