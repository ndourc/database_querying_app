import 'package:flutter/material.dart';
import '../utilities/calendar.dart';
import 'app_colours.dart';
import 'employee_details_widget.dart';
import 'header_widget.dart';
import 'other_widgets_card.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColor.dashboardGreyColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          const HeaderWidget(),
          Expanded(
              child: SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        EmployeeDetailsWidget()
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                     children: [
                      CalendarWidget(),
                      SizedBox(height: 20),
                      OtherWidgets(),
                     ],
                    ),
                  ),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}