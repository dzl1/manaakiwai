import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manaakiwai/controllers/buttons_controller.dart';
import '../../../../constants/icons.dart';
import '../../../../utils/size_config.dart';
import '../../notes & journal/components/bottom_circle_widgets.dart';

class BottomEditButtons extends StatelessWidget {
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
                buttonCont.isDolphine.value = !buttonCont.isDolphine.value;
              },
              child: BottomCircleWidgets(
                height: SizeConfig.heightMultiplier * 5,
                width: SizeConfig.widthMultiplier * 10,
                borderColor: buttonCont.isDolphine.value
                    ? const Color(0xFF0094FF)
                    : const Color(0xFF0094FF).withOpacity(0.5),
                mainColor: buttonCont.isDolphine.value
                    ? const Color.fromARGB(255, 13, 73, 100)
                    : const Color.fromARGB(255, 13, 73, 100).withOpacity(0.5),
                img: notes1,
              ),
            ),
            InkWell(
              onTap: () {
                buttonCont.isPlanting.value = !buttonCont.isPlanting.value;
              },
              child: BottomCircleWidgets(
                height: SizeConfig.heightMultiplier * 5,
                width: SizeConfig.widthMultiplier * 10,
                borderColor: buttonCont.isPlanting.value
                    ? const Color(0xFF23A518)
                    : const Color(0xFF23A518).withOpacity(0.5),
                img: notes2,
                mainColor: buttonCont.isPlanting.value
                    ? const Color.fromARGB(255, 13, 73, 100)
                    : const Color.fromARGB(255, 13, 73, 100).withOpacity(0.5),
              ),
            ),
            InkWell(
              onTap: () {
                buttonCont.isZigZag.value = !buttonCont.isZigZag.value;
              },
              child: BottomCircleWidgets(
                height: SizeConfig.heightMultiplier * 5,
                width: SizeConfig.widthMultiplier * 10,
                borderColor: buttonCont.isZigZag.value
                    ? const Color(0xFFFC881F)
                    : const Color(0xFFFC881F).withOpacity(0.5),
                mainColor: buttonCont.isZigZag.value
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
