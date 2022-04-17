import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manaakiwai/constants/colors.dart';
import 'package:manaakiwai/utils/size_config.dart';
import 'package:manaakiwai/views/dialogs/choose_source.dart';
import 'package:manaakiwai/views/pages/notes%20and%20journal%20show%20data/showdata_notes.dart';
import 'package:manaakiwai/views/widgets/gradient_background.dart';
import 'package:manaakiwai/views/widgets/steps_circle.dart';
import 'package:websafe_svg/websafe_svg.dart';
import '../../../constants/icons.dart';
import '../updates & news/components/upper_container.dart';
import 'components/add_buttons.dart';
import 'components/add_journal_textfield.dart';

class AddJournalPage extends StatelessWidget {
  const AddJournalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController dateCont =
        TextEditingController(text: "29 MARCH 2022");
    TextEditingController locationCont = TextEditingController();
    TextEditingController descriptionCont = TextEditingController();
    return Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                Get.to(() => const ShowDataNotesJournalPage(),
                    transition: Transition.leftToRight);
              },
              child: StepCircleWidget(
                  child: WebsafeSvg.asset(folderIcon,
                      color: Colors.white,
                      height: SizeConfig.heightMultiplier * 3.5),
                  borderColor: Colors.white),
            ),
            SizedBox(width: SizeConfig.widthMultiplier * 3),
            InkWell(
              onTap: () {
                Get.dialog(const ChooseSourceDialog());
              },
              child: StepCircleWidget(
                  child: WebsafeSvg.asset(cameraIcon,
                      height: SizeConfig.heightMultiplier * 2.6),
                  borderColor: Colors.white),
            ),
          ],
        ),
        body: GradientBackground(
          isScrollView: false,
          child: SizedBox(
            height: SizeConfig.heightMultiplier * 100,
            width: SizeConfig.widthMultiplier * 100,
            child: Stack(
              children: [
                //INPUT FIELDS
                Positioned(
                  bottom: 0,
                  child: SizedBox(
                    height: SizeConfig.heightMultiplier * 80,
                    width: SizeConfig.widthMultiplier * 100,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AddJourneyTextField(
                              maxLinesOfText: 1,
                              maxLinesOfHint: 1,
                              isSuffixIcon: false,
                              controller: dateCont,
                              isTextFieldEnable: false,
                              borderRadius: 40,
                              hintText: "",
                              heading: "Last modified date"),
                          AddJourneyTextField(
                              maxLinesOfText: 1,
                              maxLinesOfHint: 1,
                              isSuffixIcon: true,
                              controller: locationCont,
                              isTextFieldEnable: true,
                              borderRadius: 40,
                              hintText: "Enter your location",
                              heading: "Last Entered location"),
                          AddJourneyTextField(
                              maxLinesOfText: 8,
                              maxLinesOfHint: 3,
                              isSuffixIcon: false,
                              controller: descriptionCont,
                              isTextFieldEnable: true,
                              borderRadius: 20,
                              hintText:
                                  "Rakaunui : Type your notes / journal entry / observations here...",
                              heading: "Last Entered location"),
                          SizedBox(height: SizeConfig.heightMultiplier * 2),
                          //BOTTOM BUTTONS
                          Center(child: BottomAddButtons()),
                          SizedBox(height: SizeConfig.heightMultiplier * 2),
                          //IMAGES THAT USER UPLOADS
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 5,
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.widthMultiplier * 5),
                            shrinkWrap: true,
                            itemBuilder: (_, index) => Stack(
                              children: [
                                Container(
                                  height: SizeConfig.heightMultiplier * 75,
                                  width: SizeConfig.widthMultiplier * 90,
                                  margin: EdgeInsets.only(
                                      bottom:
                                          SizeConfig.heightMultiplier * 1.5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: kPrimaryColor),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/ocean.jpg"),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(25)),
                                ),
                                Positioned(
                                    top: SizeConfig.heightMultiplier * 2,
                                    right: SizeConfig.widthMultiplier * 3,
                                    child: Container(
                                      height: SizeConfig.heightMultiplier * 5,
                                      width: SizeConfig.widthMultiplier * 10,
                                      decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Color.fromARGB(
                                                    255, 13, 73, 100),
                                                Colors.black
                                              ]),
                                          border: Border.all(
                                              color: Colors.grey, width: 1),
                                          shape: BoxShape.circle),
                                      child: const Icon(Icons.share,
                                          size: 26, color: Colors.white),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(height: SizeConfig.heightMultiplier * 6),
                        ],
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 0,
                  child: UpdatesUpperContainer(
                    date: "Rakaunui 29 march 2022",
                    heading: "notes & journal",
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
