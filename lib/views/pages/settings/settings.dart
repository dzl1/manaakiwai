import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manaakiwai/constants/colors.dart';
import 'package:manaakiwai/controllers/auth_controller.dart';
import 'package:manaakiwai/utils/size_config.dart';
import 'package:manaakiwai/views/widgets/gradient_background.dart';
import 'package:websafe_svg/websafe_svg.dart';
import '../../../constants/icons.dart';
import '../../widgets/steps.dart';
import '../../widgets/upper_gradient_container.dart';
import 'components/about_app.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GradientBackground(
            isScrollView: true,
            child: Column(
              children: [
                //UPPER CONTAINER
                SizedBox(height: SizeConfig.heightMultiplier * 6),
                Row(
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
                    Text(
                      "Settings".toUpperCase(),
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: SizeConfig.textMultiplier * 4),
                    ),
                    SizedBox(width: SizeConfig.widthMultiplier*5,)
                  ],
                ),
                SizedBox(height: SizeConfig.heightMultiplier * 5),
                const AboutAppWidget(),
                //STEPS OPTIONS
                StepsWidget(
                  img: WebsafeSvg.asset(logout,
                      height: SizeConfig.heightMultiplier * 3.8),
                  title: "Log out",
                  subTitle:
                      "Sign out of the application. You will need to sign back in to view any saved journal entries",
                  dashColor: kPrimaryColor,
                  press: () {
                    Get.find<AuthController>().signOut();
                  },
                  subTitleColor: kPrimaryColor,
                ),
                StepsWidget(
                  img: WebsafeSvg.asset(backup,
                      height: SizeConfig.heightMultiplier * 3),
                  title: "backup / restore data",
                  subTitle: "Backup or restore a backup",
                  dashColor: kPrimaryColor,
                  press: () {},
                  subTitleColor: kPrimaryColor,
                ),
                StepsWidget(
                  img: WebsafeSvg.asset(wipeData,
                      height: SizeConfig.heightMultiplier * 3),
                  title: "Wipe data",
                  subTitle: "Clear all data from this device",
                  dashColor: kPrimaryColor,
                  press: () {},
                  subTitleColor: kPrimaryColor,
                ),
                StepsWidget(
                  img: WebsafeSvg.asset(switchLanguage,
                      height: SizeConfig.heightMultiplier * 3.8),
                  title: "Switch language",
                  subTitle:
                      "Switches the language between Te Reo Maori & English ",
                  dashColor: kPrimaryColor,
                  subTitleColor: kPrimaryColor,
                  press: () {},
                )
              ],
            )));
  }
}
