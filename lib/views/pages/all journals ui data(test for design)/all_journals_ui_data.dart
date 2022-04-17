//////////////////////TEST DATA FILE//////////////////////////

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:manaakiwai/constants/colors.dart';

import '../../../constants/icons.dart';
import '../../../utils/size_config.dart';
import '../../widgets/gradient_background.dart';
import '../notes & journal/components/bottom_circle_widgets.dart';
import '../notes & journal/notes_journal.dart';
import '../updates & news/components/upper_container.dart';

class AllJournalsUIData extends StatefulWidget {
  const AllJournalsUIData({Key? key}) : super(key: key);

  @override
  State<AllJournalsUIData> createState() => _AllJournalsUIDataState();
}

class _AllJournalsUIDataState extends State<AllJournalsUIData> {
  @override
  Widget build(BuildContext context) {
    int selectedPage = 3;
    int selectedPage2 = 3;
    int selectedPage3 = 4;
    return Scaffold(
      body: GradientBackground(
        isScrollView: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UpdatesUpperContainer(
              date: "Rakunui 29 march 2022",
              heading: "notes & journal",
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 2),
            Text(
              "March".toUpperCase(),
              style: const TextStyle(
                  fontWeight: FontWeight.w600, color: kPrimaryColor),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 2),
            SizedBox(
              height: SizeConfig.heightMultiplier * 24.5,
              width: SizeConfig.widthMultiplier * 100,
              child: CarouselSlider(
                  items: [
                    for (int i = 0; i < 6; i++) ...[
                      InkWell(
                        onTap: () {},
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                                top: 0,
                                child: Container(
                                    height: SizeConfig.heightMultiplier * 23,
                                    width: SizeConfig.widthMultiplier * 36,
                                    decoration: BoxDecoration(
                                        color: selectedPage == i
                                            ? Colors.white
                                            : Colors.white.withOpacity(0.3),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 6)
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Column(
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              height:
                                                  SizeConfig.heightMultiplier *
                                                      12,
                                              width:
                                                  SizeConfig.widthMultiplier *
                                                      100,
                                              decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  15),
                                                          topRight:
                                                              Radius.circular(
                                                                  15)),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/ocean.jpg"),
                                                      fit: BoxFit.cover)),
                                            ),
                                            Positioned(
                                                child: Container(
                                              height:
                                                  SizeConfig.heightMultiplier *
                                                      12,
                                              width:
                                                  SizeConfig.widthMultiplier *
                                                      100,
                                              decoration: BoxDecoration(
                                                color: selectedPage == i
                                                    ? null
                                                    : Colors.white
                                                        .withOpacity(0.3),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(15),
                                                        topRight:
                                                            Radius.circular(
                                                                15)),
                                              ),
                                            ))
                                          ],
                                        ),
                                        SizedBox(
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    1),
                                        SizedBox(
                                            width:
                                                SizeConfig.widthMultiplier * 28,
                                            child: Text("Journal Title eer",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                    color: selectedPage == i
                                                        ? Colors.black
                                                        : Colors.black45,
                                                    fontWeight:
                                                        FontWeight.w600))),
                                        SizedBox(
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    1.5),
                                        Text("12 March 2022",
                                            style: TextStyle(
                                                fontSize:
                                                    SizeConfig.textMultiplier *
                                                        1.4,
                                                color: Colors.grey))
                                      ],
                                    ))),
                            Positioned(
                                bottom: 0,
                                child: Stack(
                                  children: [
                                    SizedBox(
                                      width: SizeConfig.widthMultiplier * 27,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          BottomCircleWidgets( mainColor: const Color.fromARGB(255, 13, 73, 100),
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    3.5,
                                            width:
                                                SizeConfig.widthMultiplier * 7,
                                            borderColor:
                                                const Color(0xFF0094FF),
                                            img: notes1,
                                          ),
                                          BottomCircleWidgets( mainColor: const Color.fromARGB(255, 13, 73, 100),
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    3.5,
                                            width:
                                                SizeConfig.widthMultiplier * 7,
                                            borderColor:
                                                const Color(0xFF23A518),
                                            img: notes2,
                                          ),
                                          BottomCircleWidgets( mainColor: const Color.fromARGB(255, 13, 73, 100),
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    3.5,
                                            width:
                                                SizeConfig.widthMultiplier * 7,
                                            borderColor:
                                                const Color(0xFFFC881F),
                                            img: notes3,
                                          )
                                        ],
                                      ),
                                    ),
                                    selectedPage == i
                                        ? const SizedBox()
                                        : SizedBox(
                                            width:
                                                SizeConfig.widthMultiplier * 27,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: SizeConfig
                                                          .heightMultiplier *
                                                      3.5,
                                                  width: SizeConfig
                                                          .widthMultiplier *
                                                      7,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.white
                                                          .withOpacity(0.4)),
                                                ),
                                                Container(
                                                  height: SizeConfig
                                                          .heightMultiplier *
                                                      3.5,
                                                  width: SizeConfig
                                                          .widthMultiplier *
                                                      7,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.white
                                                          .withOpacity(0.4)),
                                                ),
                                                Container(
                                                  height: SizeConfig
                                                          .heightMultiplier *
                                                      3.5,
                                                  width: SizeConfig
                                                          .widthMultiplier *
                                                      7,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.white
                                                          .withOpacity(0.4)),
                                                )
                                              ],
                                            ),
                                          ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ]
                  ],
                  options: CarouselOptions(
                    height: 400,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.4,
                    initialPage: 3,
                    enableInfiniteScroll: false,
                    reverse: false,
                    autoPlay: false,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    onPageChanged: (val, pageReason) {
                      setState(() {
                        selectedPage = val;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                  )),
            ),
///////////////////////////////TEST DATA FILE
            SizedBox(height: SizeConfig.heightMultiplier * 1),
            Text(
              "March".toUpperCase(),
              style: const TextStyle(
                  fontWeight: FontWeight.w600, color: kPrimaryColor),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 1),
            SizedBox(
              height: SizeConfig.heightMultiplier * 24.5,
              width: SizeConfig.widthMultiplier * 100,
              child: CarouselSlider(
                  items: [
                    for (int i = 0; i < 6; i++) ...[
                      InkWell(
                        onTap: () {},
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                                top: 0,
                                child: Container(
                                    height: SizeConfig.heightMultiplier * 23,
                                    width: SizeConfig.widthMultiplier * 36,
                                    decoration: BoxDecoration(
                                        color: selectedPage2 == i
                                            ? Colors.white
                                            : Colors.white.withOpacity(0.3),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 6)
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Column(
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              height:
                                                  SizeConfig.heightMultiplier *
                                                      12,
                                              width:
                                                  SizeConfig.widthMultiplier *
                                                      100,
                                              decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  15),
                                                          topRight:
                                                              Radius.circular(
                                                                  15)),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/ocean.jpg"),
                                                      fit: BoxFit.cover)),
                                            ),
                                            Positioned(
                                                child: Container(
                                              height:
                                                  SizeConfig.heightMultiplier *
                                                      12,
                                              width:
                                                  SizeConfig.widthMultiplier *
                                                      100,
                                              decoration: BoxDecoration(
                                                color: selectedPage2 == i
                                                    ? null
                                                    : Colors.white
                                                        .withOpacity(0.3),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(15),
                                                        topRight:
                                                            Radius.circular(
                                                                15)),
                                              ),
                                            ))
                                          ],
                                        ),
                                        SizedBox(
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    1),
                                        SizedBox(
                                            width:
                                                SizeConfig.widthMultiplier * 28,
                                            child: Text("Journal Title eer",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                    color: selectedPage2 == i
                                                        ? Colors.black
                                                        : Colors.black45,
                                                    fontWeight:
                                                        FontWeight.w600))),
                                        SizedBox(
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    1.5),
                                        Text("12 March 2022",
                                            style: TextStyle(
                                                fontSize:
                                                    SizeConfig.textMultiplier *
                                                        1.4,
                                                color: Colors.grey))
                                      ],
                                    ))),
                            Positioned(
                                bottom: 0,
                                child: Stack(
                                  children: [
                                    SizedBox(
                                      width: SizeConfig.widthMultiplier * 27,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          BottomCircleWidgets( mainColor: const Color.fromARGB(255, 13, 73, 100),
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    3.5,
                                            width:
                                                SizeConfig.widthMultiplier * 7,
                                            borderColor:
                                                const Color(0xFF0094FF),
                                            img: notes1,
                                          ),
                                          BottomCircleWidgets( mainColor: const Color.fromARGB(255, 13, 73, 100),
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    3.5,
                                            width:
                                                SizeConfig.widthMultiplier * 7,
                                            borderColor:
                                                const Color(0xFF23A518),
                                            img: notes2,
                                          ),
                                          BottomCircleWidgets( mainColor: const Color.fromARGB(255, 13, 73, 100),
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    3.5,
                                            width:
                                                SizeConfig.widthMultiplier * 7,
                                            borderColor:
                                                const Color(0xFFFC881F),
                                            img: notes3,
                                          )
                                        ],
                                      ),
                                    ),
                                    selectedPage2 == i
                                        ? const SizedBox()
                                        : SizedBox(
                                            width:
                                                SizeConfig.widthMultiplier * 27,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: SizeConfig
                                                          .heightMultiplier *
                                                      3.5,
                                                  width: SizeConfig
                                                          .widthMultiplier *
                                                      7,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.white
                                                          .withOpacity(0.4)),
                                                ),
                                                Container(
                                                  height: SizeConfig
                                                          .heightMultiplier *
                                                      3.5,
                                                  width: SizeConfig
                                                          .widthMultiplier *
                                                      7,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.white
                                                          .withOpacity(0.4)),
                                                ),
                                                Container(
                                                  height: SizeConfig
                                                          .heightMultiplier *
                                                      3.5,
                                                  width: SizeConfig
                                                          .widthMultiplier *
                                                      7,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.white
                                                          .withOpacity(0.4)),
                                                )
                                              ],
                                            ),
                                          ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ]
                  ],
                  options: CarouselOptions(
                    height: 400,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.4,
                    initialPage: 3,
                    enableInfiniteScroll: false,
                    reverse: false,
                    autoPlay: false,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    onPageChanged: (val, pageReason) {
                      setState(() {
                        selectedPage = val;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                  )),
            ),
            //////////////////////TEST DATA FILE
              SizedBox(height: SizeConfig.heightMultiplier * 1),
            Text(
              "March".toUpperCase(),
              style: const TextStyle(
                  fontWeight: FontWeight.w600, color: kPrimaryColor),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 1),
            SizedBox(
              height: SizeConfig.heightMultiplier * 24.5,
              width: SizeConfig.widthMultiplier * 100,
              child: CarouselSlider(
                  items: [
                    for (int i = 0; i < 6; i++) ...[
                      InkWell(
                        onTap: () {},
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                                top: 0,
                                child: Container(
                                    height: SizeConfig.heightMultiplier * 23,
                                    width: SizeConfig.widthMultiplier * 36,
                                    decoration: BoxDecoration(
                                        color: selectedPage3 == i
                                            ? Colors.white
                                            : Colors.white.withOpacity(0.3),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 6)
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Column(
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              height:
                                                  SizeConfig.heightMultiplier *
                                                      12,
                                              width:
                                                  SizeConfig.widthMultiplier *
                                                      100,
                                              decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  15),
                                                          topRight:
                                                              Radius.circular(
                                                                  15)),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/ocean.jpg"),
                                                      fit: BoxFit.cover)),
                                            ),
                                            Positioned(
                                                child: Container(
                                              height:
                                                  SizeConfig.heightMultiplier *
                                                      12,
                                              width:
                                                  SizeConfig.widthMultiplier *
                                                      100,
                                              decoration: BoxDecoration(
                                                color: selectedPage3 == i
                                                    ? null
                                                    : Colors.white
                                                        .withOpacity(0.3),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(15),
                                                        topRight:
                                                            Radius.circular(
                                                                15)),
                                              ),
                                            ))
                                          ],
                                        ),
                                        SizedBox(
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    1),
                                        SizedBox(
                                            width:
                                                SizeConfig.widthMultiplier * 28,
                                            child: Text("Journal Title eer",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                    color: selectedPage3 == i
                                                        ? Colors.black
                                                        : Colors.black45,
                                                    fontWeight:
                                                        FontWeight.w600))),
                                        SizedBox(
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    1.5),
                                        Text("12 March 2022",
                                            style: TextStyle(
                                                fontSize:
                                                    SizeConfig.textMultiplier *
                                                        1.4,
                                                color: Colors.grey))
                                      ],
                                    ))),
                            Positioned(
                                bottom: 0,
                                child: Stack(
                                  children: [
                                    SizedBox(
                                      width: SizeConfig.widthMultiplier * 27,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          BottomCircleWidgets( mainColor: const Color.fromARGB(255, 13, 73, 100),
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    3.5,
                                            width:
                                                SizeConfig.widthMultiplier * 7,
                                            borderColor:
                                                const Color(0xFF0094FF),
                                            img: notes1,
                                          ),
                                          BottomCircleWidgets( mainColor: const Color.fromARGB(255, 13, 73, 100),
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    3.5,
                                            width:
                                                SizeConfig.widthMultiplier * 7,
                                            borderColor:
                                                const Color(0xFF23A518),
                                            img: notes2,
                                          ),
                                          BottomCircleWidgets( mainColor: const Color.fromARGB(255, 13, 73, 100),
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    3.5,
                                            width:
                                                SizeConfig.widthMultiplier * 7,
                                            borderColor:
                                                const Color(0xFFFC881F),
                                            img: notes3,
                                          )
                                        ],
                                      ),
                                    ),
                                    selectedPage3 == i
                                        ? const SizedBox()
                                        : SizedBox(
                                            width:
                                                SizeConfig.widthMultiplier * 27,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: SizeConfig
                                                          .heightMultiplier *
                                                      3.5,
                                                  width: SizeConfig
                                                          .widthMultiplier *
                                                      7,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.white
                                                          .withOpacity(0.4)),
                                                ),
                                                Container(
                                                  height: SizeConfig
                                                          .heightMultiplier *
                                                      3.5,
                                                  width: SizeConfig
                                                          .widthMultiplier *
                                                      7,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.white
                                                          .withOpacity(0.4)),
                                                ),
                                                Container(
                                                  height: SizeConfig
                                                          .heightMultiplier *
                                                      3.5,
                                                  width: SizeConfig
                                                          .widthMultiplier *
                                                      7,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.white
                                                          .withOpacity(0.4)),
                                                )
                                              ],
                                            ),
                                          ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ]
                  ],
                  options: CarouselOptions(
                    height: 400,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.4,
                    initialPage: 3,
                    enableInfiniteScroll: false,
                    reverse: false,
                    autoPlay: false,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    onPageChanged: (val, pageReason) {
                      setState(() {
                        selectedPage = val;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                  )),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 3),
            //CALENDAR
          ],
        ),
      ),
    );
  }
}
