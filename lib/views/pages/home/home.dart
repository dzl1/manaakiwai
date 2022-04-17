import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manaakiwai/constants/colors.dart';
import 'package:manaakiwai/controllers/auth_controller.dart';
import 'package:manaakiwai/utils/size_config.dart';
import 'package:manaakiwai/views/pages/settings/settings.dart';
import 'package:manaakiwai/views/widgets/gradient_background.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../constants/icons.dart';
import '../../widgets/steps.dart';
import '../notes & journal/notes_journal.dart';
import '../see maramataka/see_maramataka.dart';
import '../updates & news/updates_news.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authCont = Get.put(AuthController());
    authCont.getUser();
    return Scaffold(
        body: GradientBackground(
            isScrollView: true,
            child: Column(
              children: [
                SizedBox(height: SizeConfig.heightMultiplier * 6),
                Obx(
                  () => Text(
                    "Hi there ${authCont.getuser.name ?? ""}".toUpperCase(),
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: SizeConfig.textMultiplier * 4),
                  ),
                ),
                SizedBox(height: SizeConfig.heightMultiplier * 14),

                //STEPS OPTIONS
                StepsWidget(
                  img: WebsafeSvg.asset(moon,
                      height: SizeConfig.heightMultiplier * 3.8),
                  title: "See the maramataka",
                  subTitle: "Info on the different moon phases",
                  dashColor: const Color(0xFFE8EFF7),
                  subTitleColor: Colors.black,
                  press: () {
                    Get.to(() => const SeeMaramatakaPage(),
                        transition: Transition.rightToLeft);
                  },
                ),
                StepsWidget(
                  img: WebsafeSvg.asset(pencil,
                      height: SizeConfig.heightMultiplier * 3),
                  title: "notes / journal",
                  subTitle: "Create notes / Capture your own journal of today",
                  dashColor: const Color(0xFFE8EFF7),
                  subTitleColor: Colors.black,
                  press: () {
                    Get.to(() => const NotesAndJournalPage(),
                        transition: Transition.rightToLeft);
                  },
                ),
                StepsWidget(
                  img: WebsafeSvg.asset(chat,
                      height: SizeConfig.heightMultiplier * 3),
                  title: "updates / info / news",
                  subTitle: "Check out into on what we've been working on",
                  dashColor: const Color(0xFFE8EFF7),
                  subTitleColor: Colors.black,
                  press: () {
                    Get.to(() => const UpdatesAndNewsPage(),
                        transition: Transition.rightToLeft);
                  },
                ),
                StepsWidget(
                  img: WebsafeSvg.asset(help,
                      height: SizeConfig.heightMultiplier * 3.8),
                  title: "Settings & about",
                  subTitle: "Here's an about menu...App info..blah blah...",
                  dashColor: const Color(0xFFE8EFF7),
                  subTitleColor: Colors.black,
                  press: () {
                    Get.to(() => const SettingsPage(),
                        transition: Transition.leftToRight);
                  },
                )
              ],
            )));
  }
}
