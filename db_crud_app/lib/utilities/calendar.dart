// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'app_colours.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

DateTime _focusedDay = DateTime.now();

class _CalendarWidgetState extends State<CalendarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.appWhiteColor,
          borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${DateFormat("MMM, yyyy").format(_focusedDay)}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _focusedDay =
                            DateTime(_focusedDay.year, _focusedDay.month - 1);
                      });
                    },
                    child: Icon(
                      Icons.chevron_left,
                      color: AppColor.appBlackColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _focusedDay =
                            DateTime(_focusedDay.year, _focusedDay.month + 1);
                      });
                    },
                    child: Icon(
                      Icons.chevron_right,
                      color: AppColor.appBlackColor,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 10),
          TableCalendar(
            focusedDay: _focusedDay,
            firstDay: DateTime.utc(2020),
            lastDay: DateTime.utc(2090),
            headerVisible: false,
            onFormatChanged: (result) {},
            daysOfWeekStyle: DaysOfWeekStyle(
                dowTextFormatter: (date, locale) {
                  return DateFormat('EEE').format(date).toUpperCase();
                },
                weekendStyle: TextStyle(fontWeight: FontWeight.bold),
                weekdayStyle: TextStyle(fontWeight: FontWeight.bold)),
            onPageChanged: (day) {
              _focusedDay = day;
              setState(() {});
            },
            calendarStyle: CalendarStyle(
                todayDecoration: BoxDecoration(
                    color: AppColor.mainAccent, shape: BoxShape.circle),
                markerDecoration: BoxDecoration(
                    color: AppColor.accent, shape: BoxShape.circle)
            ),
            /********************
             Requires the internet
            **********************/
            // eventLoader: (day) {
            //   if (day.day == 25) {
            //     return [Event("Happy Counter Culture Day", canBubble: true)];
            //   }
            //   return [];
            // },
          ),
        ],
      ),
    );
  }
}
