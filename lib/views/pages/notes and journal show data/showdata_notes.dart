import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manaakiwai/constants/icons.dart';
import 'package:manaakiwai/utils/size_config.dart';
import 'package:manaakiwai/views/pages/all%20journals%20ui%20data(test%20for%20design)/all_journals_ui_data.dart';
import 'package:manaakiwai/views/widgets/gradient_background.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../widgets/steps_circle.dart';
import '../notes & journal/components/bottom_circle_widgets.dart';
import '../notes & journal/notes_journal.dart';
import '../updates & news/components/upper_container.dart';

class ShowDataNotesJournalPage extends StatefulWidget {
  const ShowDataNotesJournalPage({Key? key}) : super(key: key);

  @override
  State<ShowDataNotesJournalPage> createState() =>
      _ShowDataNotesJournalPageState();
}

class _ShowDataNotesJournalPageState extends State<ShowDataNotesJournalPage> {
  int selectedPage = 3;

  @override
  Widget build(BuildContext context) {
    const calendarThemeColor = Color(0xFF1F96AB);
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBackground(
            isScrollView: false,
            child: Column(
              children: [
                UpdatesUpperContainer(
                  date: "Rakunui 29 march 2022",
                  heading: "notes & journal",
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
                                        height:
                                            SizeConfig.heightMultiplier * 23,
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
                                                  height: SizeConfig
                                                          .heightMultiplier *
                                                      12,
                                                  width: SizeConfig
                                                          .widthMultiplier *
                                                      100,
                                                  decoration: const BoxDecoration(
                                                      borderRadius: BorderRadius
                                                          .only(
                                                              topLeft: Radius
                                                                  .circular(15),
                                                              topRight: Radius
                                                                  .circular(
                                                                      15)),
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              "assets/images/ocean.jpg"),
                                                          fit: BoxFit.cover)),
                                                ),
                                                Positioned(
                                                    child: Container(
                                                  height: SizeConfig
                                                          .heightMultiplier *
                                                      12,
                                                  width: SizeConfig
                                                          .widthMultiplier *
                                                      100,
                                                  decoration: BoxDecoration(
                                                    color: selectedPage == i
                                                        ? null
                                                        : Colors.white
                                                            .withOpacity(0.3),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    15),
                                                            topRight:
                                                                Radius.circular(
                                                                    15)),
                                                  ),
                                                ))
                                              ],
                                            ),
                                            SizedBox(
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    1),
                                            SizedBox(
                                                width:
                                                    SizeConfig.widthMultiplier *
                                                        28,
                                                child: Text("Journal Title eer",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                        color: selectedPage == i
                                                            ? Colors.black
                                                            : Colors.black45,
                                                        fontWeight:
                                                            FontWeight.w600))),
                                            SizedBox(
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    1.5),
                                            Text("12 March 2022",
                                                style: TextStyle(
                                                    fontSize: SizeConfig
                                                            .textMultiplier *
                                                        1.4,
                                                    color: Colors.grey))
                                          ],
                                        ))),
                                Positioned(
                                    bottom: 0,
                                    child: Stack(
                                      children: [
                                        SizedBox(
                                          width:
                                              SizeConfig.widthMultiplier * 27,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              BottomCircleWidgets(
                                                mainColor: const Color.fromARGB(
                                                    255, 13, 73, 100),
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    3.5,
                                                width:
                                                    SizeConfig.widthMultiplier *
                                                        7,
                                                borderColor:
                                                    const Color(0xFF0094FF),
                                                img: notes1,
                                              ),
                                              BottomCircleWidgets(
                                                mainColor: const Color.fromARGB(
                                                    255, 13, 73, 100),
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    3.5,
                                                width:
                                                    SizeConfig.widthMultiplier *
                                                        7,
                                                borderColor:
                                                    const Color(0xFF23A518),
                                                img: notes2,
                                              ),
                                              BottomCircleWidgets(
                                                mainColor: const Color.fromARGB(
                                                    255, 13, 73, 100),
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    3.5,
                                                width:
                                                    SizeConfig.widthMultiplier *
                                                        7,
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
                                                    SizeConfig.widthMultiplier *
                                                        27,
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
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Colors.white
                                                              .withOpacity(
                                                                  0.4)),
                                                    ),
                                                    Container(
                                                      height: SizeConfig
                                                              .heightMultiplier *
                                                          3.5,
                                                      width: SizeConfig
                                                              .widthMultiplier *
                                                          7,
                                                      decoration: BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Colors.white
                                                              .withOpacity(
                                                                  0.4)),
                                                    ),
                                                    Container(
                                                      height: SizeConfig
                                                              .heightMultiplier *
                                                          3.5,
                                                      width: SizeConfig
                                                              .widthMultiplier *
                                                          7,
                                                      decoration: BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Colors.white
                                                              .withOpacity(
                                                                  0.4)),
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

                SizedBox(height: SizeConfig.heightMultiplier * 7),
                //CALENDAR
                InkWell(
                  onTap: () {
                    Get.to(() => const AllJournalsUIData(),
                        transition: Transition.downToUp);
                  },

                  //CALENDAR
                  child: Container(
                    height: SizeConfig.heightMultiplier * 50,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
                    child: TableCalendar(
                      headerStyle: const HeaderStyle(
                          leftChevronVisible: true,
                          rightChevronIcon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 35,
                              color: calendarThemeColor),
                          leftChevronIcon: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 35,
                              color: calendarThemeColor),
                          titleCentered: true,
                          titleTextStyle: TextStyle(
                              fontSize: 22,
                              color: calendarThemeColor,
                              fontWeight: FontWeight.w500),
                          formatButtonVisible: false),
                      rowHeight: Get.height * 0.06,
                      calendarStyle: const CalendarStyle(
                        outsideDaysVisible: false,
                        todayTextStyle:
                            TextStyle(fontSize: 10, color: Colors.white),
                        holidayTextStyle: TextStyle(fontSize: 10),
                        defaultTextStyle: TextStyle(fontSize: 10),
                        selectedTextStyle: TextStyle(fontSize: 10),
                        weekendTextStyle: TextStyle(fontSize: 10),
                        outsideTextStyle: TextStyle(fontSize: 10),
                        withinRangeTextStyle: TextStyle(fontSize: 10),
                        cellMargin: EdgeInsets.only(bottom: 10),
                        todayDecoration: BoxDecoration(
                            color: calendarThemeColor, shape: BoxShape.circle),
                      ),
                      daysOfWeekHeight: 20,
                      daysOfWeekStyle: const DaysOfWeekStyle(
                        weekdayStyle: TextStyle(
                          fontSize: 10,
                        ),
                        weekendStyle: TextStyle(fontSize: 10),
                      ),
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: DateTime.now(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //add journey data
          Positioned(
            right: SizeConfig.widthMultiplier * 7,
            bottom: SizeConfig.heightMultiplier*50,
            child: InkWell(
              onTap: () {
                Get.back();
                Get.back();
              },
              child: const StepCircleWidget(
                  child: Icon(Icons.add, size: 25, color: Colors.white),
                  borderColor: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
