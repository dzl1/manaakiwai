import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:manaakiwai/constants/colors.dart';
import 'package:manaakiwai/constants/icons.dart';
import 'package:websafe_svg/websafe_svg.dart';
import '../../../../utils/size_config.dart';

class ChooseSourceDialog extends StatefulWidget {
  const ChooseSourceDialog({
    Key? key,
  });
  @override
  State<StatefulWidget> createState() => ChooseSourceDialogState();
}

class ChooseSourceDialogState extends State<ChooseSourceDialog>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    scaleAnimation =
        CurvedAnimation(parent: controller!, curve: Curves.elasticInOut);

    controller!.addListener(() {
      setState(() {});
    });

    controller!.forward();
  }

  TextEditingController nameCont = TextEditingController();
  //select image
  Future<void> selectImage(ImageSource source) async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: source);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation!,
          child: Container(
            height: 20 * SizeConfig.heightMultiplier,
            width: 70 * SizeConfig.widthMultiplier,
            decoration: ShapeDecoration(
                color: kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            padding: EdgeInsets.symmetric(
                vertical: SizeConfig.heightMultiplier * 4,
                horizontal: SizeConfig.widthMultiplier * 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    selectImage(ImageSource.camera);
                  },
                  child: Column(
                    children: [
                      WebsafeSvg.asset(cameraSource,color:Colors.white),
                      SizedBox(height: SizeConfig.heightMultiplier * 1),
                      const Text(
                        "Camera",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                     selectImage(ImageSource.gallery);
                  },
                  child: Column(
                    children: [
                         WebsafeSvg.asset(gallerySource,color:Colors.white),
                      SizedBox(height: SizeConfig.heightMultiplier * 1),
                      const Text(
                        "Gallery",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
