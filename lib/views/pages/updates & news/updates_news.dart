import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manaakiwai/views/widgets/gradient_background.dart';

import '../../../constants/colors.dart';
import '../../../utils/size_config.dart';

class UpdatesAndNewsPage extends StatelessWidget {
  const UpdatesAndNewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
          isScrollView: false,
          child: SizedBox(
            height: SizeConfig.heightMultiplier * 100,
            width: SizeConfig.widthMultiplier * 100,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: SizeConfig.widthMultiplier * 3.5,
                  right: SizeConfig.widthMultiplier * 3.5,
                  child: Container(
                    height: SizeConfig.heightMultiplier * 85,
                    width: SizeConfig.widthMultiplier * 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)),
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(
                            parent: AlwaysScrollableScrollPhysics()),
                        itemCount: 5,
                        padding: const EdgeInsets.all(0),
                        shrinkWrap: true,
                        itemBuilder: (_, i) => Container(
                            width: SizeConfig.widthMultiplier * 90,
                            margin: EdgeInsets.only(
                              top: SizeConfig.heightMultiplier * 3,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black54),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //IMAGE WIDGET
                                  Container(
                                      height: SizeConfig.heightMultiplier * 30,
                                      width: SizeConfig.widthMultiplier * 100,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20)),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20)),
                                        child: Image.asset(
                                          "assets/images/ocean.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  SizedBox(
                                      height:
                                          SizeConfig.heightMultiplier * 1.5),
                                  //NAME AND DATE WIDGET
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            SizeConfig.widthMultiplier * 4),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Lake Ngatu [title]",
                                          style: TextStyle(
                                              color: Color(0xFF334856),
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          "12 March 2022",
                                          style: TextStyle(
                                            fontSize:
                                                SizeConfig.textMultiplier * 1.7,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        SizedBox(
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    3),
                                        Text(
                                          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                                          style: TextStyle(
                                            fontSize:
                                                SizeConfig.textMultiplier * 1.7,
                                          ),
                                        ),
                                        SizedBox(
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    2),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                              height:
                                                  SizeConfig.heightMultiplier *
                                                      5,
                                              width:
                                                  SizeConfig.widthMultiplier *
                                                      10,
                                              decoration: BoxDecoration(
                                                  color: kPrimaryColor,
                                                  border: Border.all(
                                                      color: const Color(
                                                          0xFF73A1C2),
                                                      width: 3),
                                                  shape: BoxShape.circle),
                                              child: const Icon(Icons.share,
                                                  size: 20,
                                                  color: Colors.white),
                                            )),
                                        SizedBox(
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    2),
                                      ],
                                    ),
                                  ),
                                ]))),
                  ),
                ),
                //UPPER CONTAINER
                Positioned(
                  top: SizeConfig.heightMultiplier * 5,
                  child: SizedBox(
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
                              "Updates & news".toUpperCase(),
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: SizeConfig.textMultiplier * 4),
                            ),
                            SizedBox(height: SizeConfig.heightMultiplier * 0.2),
                            Text(
                              "Ariro - 12 march 2022".toUpperCase(),
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: SizeConfig.textMultiplier * 2),
                            ),
                          ],
                        ),
                        SizedBox(width: SizeConfig.widthMultiplier * 10),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
