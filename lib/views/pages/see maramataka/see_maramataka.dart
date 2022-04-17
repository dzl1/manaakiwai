import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manaakiwai/controllers/buttons_controller.dart';
import 'package:manaakiwai/views/pages/see%20maramataka/components/edit_buttons.dart';
import '../../../constants/colors.dart';
import '../../../constants/images.dart';
import '../../../utils/size_config.dart';
import 'components/bottom_marataka_buttons.dart';

class SeeMaramatakaPage extends StatelessWidget {
  const SeeMaramatakaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController name =
        TextEditingController(text: "Rakaunui".toUpperCase());
    TextEditingController detail = TextEditingController(
        text: "Today is a good day for fishing and planting.");
    final buttonCont = Get.put(ButtonsController());
    return Obx(
      () => Scaffold(
          floatingActionButton: InkWell(
            onTap: () {
              if (buttonCont.whichSectionMarataka.value == "seeMarataka") {
                buttonCont.whichSectionMarataka.value = "editButtons";
              } else if (buttonCont.whichSectionMarataka.value ==
                  "editButtons") {
                buttonCont.whichSectionMarataka.value = "seeMarataka";
              } else if (buttonCont.whichSectionMarataka.value ==
                  "textSection") {
                buttonCont.whichSectionMarataka.value = "editText";
              } else if (buttonCont.whichSectionMarataka.value == "editText") {
                buttonCont.whichSectionMarataka.value = "seeMarataka";
              }
            },
            child: Container(
                height: SizeConfig.heightMultiplier * 7,
                width: SizeConfig.widthMultiplier * 14,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: kPrimaryColor,
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomRight,
                        colors: [
                          const Color.fromARGB(255, 13, 73, 100)
                              .withOpacity(0.3),
                          Colors.black38
                        ]),
                    shape: BoxShape.circle),
                child: Center(
                    child: Icon(
                        buttonCont.whichSectionMarataka.value ==
                                    "editButtons" ||
                                buttonCont.whichSectionMarataka.value ==
                                    "editText"
                            ? Icons.save
                            : Icons.edit,
                        color: Colors.white,
                        size: 17))),
          ),
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: SizeConfig.heightMultiplier * 100,
                  width: SizeConfig.widthMultiplier * 100,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Color.fromARGB(255, 6, 41, 58),
                        kPrimaryColor,
                      ])),
                ),
                Positioned(
                    bottom: 0,
                    right: SizeConfig.widthMultiplier * 20,
                    child: Image.asset(
                      bottomMountains,
                      color: Colors.black.withOpacity(0.3),
                      height: SizeConfig.heightMultiplier * 20,
                    )),
                Center(
                  child: Column(
                    children: [
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
                                color: Colors.white,
                                size: 30,
                              )),
                          Column(children: [
                            buttonCont.whichSectionMarataka.value == "editText"
                                ? Container(
                                    height: SizeConfig.heightMultiplier * 7,
                                    width: SizeConfig.widthMultiplier * 50,
                                    margin: EdgeInsets.only(
                                        bottom:
                                            SizeConfig.heightMultiplier * 1),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF292828),
                                        border: Border.all(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            SizeConfig.widthMultiplier * 5,
                                        vertical:
                                            SizeConfig.heightMultiplier * 0.5),
                                    child: TextField(
                                      controller: name,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              SizeConfig.textMultiplier * 3.5),
                                      decoration: const InputDecoration(
                                          border: InputBorder.none),
                                    ))
                                : Text("Rakaunui".toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            SizeConfig.textMultiplier * 3.5)),
                            Text("30 March 2022".toUpperCase(),
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: SizeConfig.textMultiplier * 1.8)),
                          ]),
                          SizedBox(
                            width: SizeConfig.widthMultiplier * 5,
                          )
                        ],
                      ),
                      SizedBox(height: SizeConfig.heightMultiplier * 14),
                      Image.asset("assets/images/moon.png",
                          height: SizeConfig.heightMultiplier * 40),
                      SizedBox(
                          height: buttonCont.whichSectionMarataka.value ==
                                  "editText"
                              ? SizeConfig.heightMultiplier * 2
                              : SizeConfig.heightMultiplier * 6),
                      buttonCont.whichSectionMarataka.value == "textSection"
                          ? SizedBox(
                              width: SizeConfig.widthMultiplier * 60,
                              child: Text(
                                  "Today is a good day for fishing and planting",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontWeight: FontWeight.w500,
                                      fontSize:
                                          SizeConfig.widthMultiplier * 4.2)),
                            )
                          : buttonCont.whichSectionMarataka.value == "editText"
                              ? Container(
                                  height: SizeConfig.heightMultiplier * 20,
                                  width: SizeConfig.widthMultiplier * 65,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF292828),
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(12)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          SizeConfig.widthMultiplier * 5,
                                      vertical:
                                          SizeConfig.heightMultiplier * 0.5),
                                  child: TextField(
                                    controller: detail,
                                    maxLines: 5,
                                    style: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontWeight: FontWeight.w500,
                                        fontSize:
                                            SizeConfig.widthMultiplier * 4.2),
                                    decoration: const InputDecoration(
                                        border: InputBorder.none),
                                  ))
                              : const SizedBox(),
                      buttonCont.whichSectionMarataka.value == "editButtons"
                          ? BottomEditButtons()
                          : buttonCont.whichSectionMarataka.value ==
                                  "seeMarataka"
                              ? BottomMaratakaButtons(
                                  press: () {
                                    buttonCont.whichSectionMarataka.value =
                                        "textSection";
                                  },
                                )
                              : const SizedBox()
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
