import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manaakiwai/constants/colors.dart';
import 'package:manaakiwai/constants/icons.dart';
import 'package:manaakiwai/utils/size_config.dart';
import 'package:manaakiwai/views/pages/add%20jounal/add_journal.dart';
import 'package:manaakiwai/views/widgets/gradient_background.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../updates & news/components/upper_container.dart';
import 'components/bottom_circle_widgets.dart';

class NotesAndJournalPage extends StatelessWidget {
  const NotesAndJournalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const calendarThemeColor = Color(0xFF1F96AB);
    return Scaffold(
      body: GradientBackground(
        isScrollView: false,
        child: Column(
          children: [
            const UpdatesUpperContainer(
              date: "Rakunui 29 march 2022",
              heading: "notes & journal",
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 5),
            Center(
              child: InkWell(
                onTap: () {
                  Get.to(() => const AddJournalPage(),
                      transition: Transition.leftToRight);
                },
                child: SizedBox(
                  height: SizeConfig.heightMultiplier * 24.5,
                  width: SizeConfig.widthMultiplier * 36,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                          top: 0,
                          child: Container(
                              height: SizeConfig.heightMultiplier * 23,
                              width: SizeConfig.widthMultiplier * 36,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black12, blurRadius: 6)
                                  ],
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                  child: Container(
                                height: SizeConfig.heightMultiplier * 10,
                                width: SizeConfig.widthMultiplier * 20,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          Color(0xFF084E6E),
                                          Colors.black87
                                        ])),
                                child: const Center(
                                    child: Icon(Icons.add,
                                        size: 45, color: Colors.white)),
                              )))),
                      Positioned(
                          bottom: 0,
                          child: SizedBox(
                            width: SizeConfig.widthMultiplier * 27,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BottomCircleWidgets(
                                  height: SizeConfig.heightMultiplier * 3.5,
                                  width: SizeConfig.widthMultiplier * 7,
                                  borderColor: const Color(0xFF0094FF),
                                  mainColor:
                                      const Color.fromARGB(255, 13, 73, 100),
                                  img: notes1,
                                ),
                                BottomCircleWidgets(
                                  height: SizeConfig.heightMultiplier * 3.5,
                                  width: SizeConfig.widthMultiplier * 7,
                                  borderColor: const Color(0xFF23A518),
                                  img: notes2,
                                  mainColor:
                                      const Color.fromARGB(255, 13, 73, 100),
                                ),
                                BottomCircleWidgets(
                                  height: SizeConfig.heightMultiplier * 3.5,
                                  width: SizeConfig.widthMultiplier * 7,
                                  borderColor: const Color(0xFFFC881F),
                                  mainColor:
                                      const Color.fromARGB(255, 13, 73, 100),
                                  img: notes3,
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height:SizeConfig.heightMultiplier*5),
            //CALENDAR
            Container(
              height: SizeConfig.heightMultiplier *50,
              decoration:const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
              child: TableCalendar(
                headerStyle: const HeaderStyle(
                    leftChevronVisible: true,
                    rightChevronIcon: Icon(Icons.arrow_forward_ios_rounded,
                        size: 35, color: calendarThemeColor),
                    leftChevronIcon: Icon(Icons.arrow_back_ios_new_rounded,
                        size: 35, color: calendarThemeColor),
                    titleCentered: true,
                    titleTextStyle: TextStyle(
                        fontSize: 22,
                        color: calendarThemeColor,
                        fontWeight: FontWeight.w500),
                    formatButtonVisible: false),
                rowHeight: Get.height * 0.06,
                calendarStyle: const CalendarStyle(
                  outsideDaysVisible: false,
                  todayTextStyle: TextStyle(fontSize: 10, color: Colors.white),
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
          ],
        ),
      ),
    );
  }
}
