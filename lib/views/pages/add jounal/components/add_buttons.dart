import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manaakiwai/controllers/buttons_controller.dart';
import '../../../../constants/icons.dart';
import '../../../../utils/size_config.dart';
import '../../notes & journal/components/bottom_circle_widgets.dart';

class BottomAddButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final buttonCont = Get.put(ButtonsController());
    return Obx(
      () => SizedBox(
        width: SizeConfig.widthMultiplier * 35,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                buttonCont.isAddDolphine.value = !buttonCont.isAddDolphine.value;
              },
              child: BottomCircleWidgets(
                height: SizeConfig.heightMultiplier * 5,
                width: SizeConfig.widthMultiplier * 10,
                borderColor: buttonCont.isAddDolphine.value
                    ? const Color(0xFF0094FF)
                    : const Color(0xFF0094FF).withOpacity(0.5),
                mainColor: buttonCont.isAddDolphine.value
                    ? const Color.fromARGB(255, 13, 73, 100)
                    : const Color.fromARGB(255, 13, 73, 100).withOpacity(0.5),
                img: notes1,
              ),
            ),
            InkWell(
              onTap: () {
                buttonCont.isAddPlanting.value = !buttonCont.isAddPlanting.value;
              },
              child: BottomCircleWidgets(
                height: SizeConfig.heightMultiplier * 5,
                width: SizeConfig.widthMultiplier * 10,
                borderColor: buttonCont.isAddPlanting.value
                    ? const Color(0xFF23A518)
                    : const Color(0xFF23A518).withOpacity(0.5),
                img: notes2,
                mainColor: buttonCont.isAddPlanting.value
                    ? const Color.fromARGB(255, 13, 73, 100)
                    : const Color.fromARGB(255, 13, 73, 100).withOpacity(0.5),
              ),
            ),
            InkWell(
              onTap: () {
                buttonCont.isAddZigZag.value = !buttonCont.isAddZigZag.value;
              },
              child: BottomCircleWidgets(
                height: SizeConfig.heightMultiplier * 5,
                width: SizeConfig.widthMultiplier * 10,
                borderColor: buttonCont.isAddZigZag.value
                    ? const Color(0xFFFC881F)
                    : const Color(0xFFFC881F).withOpacity(0.5),
                mainColor: buttonCont.isAddZigZag.value
                    ? const Color.fromARGB(255, 13, 73, 100)
                    : const Color.fromARGB(255, 13, 73, 100).withOpacity(0.5),
                img: notes3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
