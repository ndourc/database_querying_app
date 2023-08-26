import 'dart:ui';
import 'package:flutter/material.dart';

import 'app_colours.dart';

class EmployeeDetailsWidget extends StatefulWidget {
  const EmployeeDetailsWidget({super.key});

  @override
  State<EmployeeDetailsWidget> createState() => _EmployeeDetailsWidgetState();
}

class _EmployeeDetailsWidgetState extends State<EmployeeDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColor.sideBarTextColor,
          borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: AppColor.greenAccentColor,
                ),
                height: 30,
                width: 5,
              ),
              SizedBox(width: 5),
              Text(
                'Attendance Details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: AppColor.appWhiteColor,
                ),
              ),
              SizedBox(width: 170),
              Container(
                decoration: BoxDecoration(
                  color: AppColor.greenAccentColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: AppColor.appWhiteColor,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Sort',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor.appWhiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5),
              Container(
                decoration: BoxDecoration(
                  color: AppColor.greenAccentColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.filter_alt_outlined,
                      color: AppColor.appWhiteColor,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'Filter',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor.appWhiteColor,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: AppColor.appWhiteColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            thickness: 0.5,
            color: AppColor.appWhiteColor,
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.dashboardGreyColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  color: AppColor.appWhiteColor,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'July 18 2023',
                                  style:
                                      TextStyle(color: AppColor.appWhiteColor),
                                ),
                                SizedBox(width: 15),
                                ClipRect(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 15,
                                      sigmaY: 15,
                                    ),
                                    child: Text(
                                      'On Time',
                                      style: TextStyle(
                                          color: AppColor.appWhiteColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text.rich(
                                  TextSpan(
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: AppColor.appWhiteColor,
                                          fontWeight: FontWeight.normal),
                                      children: [
                                        TextSpan(
                                          text: 'Check In Time',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 10,
                                            color: AppColor.appWhiteColor,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n08:30',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: AppColor.appWhiteColor,
                                          ),
                                        ),
                                      ]),
                                ),
                                SizedBox(width: 20),
                                Text.rich(
                                  TextSpan(
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: AppColor.appWhiteColor,
                                          fontWeight: FontWeight.normal),
                                      children: [
                                        TextSpan(
                                          text: 'Check Out Time',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 10,
                                            color: AppColor.appWhiteColor,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n17:15',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: AppColor.appWhiteColor,
                                          ),
                                        ),
                                      ]),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.dashboardGreyColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  color: AppColor.appWhiteColor,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'July 20 2023',
                                  style:
                                      TextStyle(color: AppColor.appWhiteColor),
                                ),
                                SizedBox(width: 15),
                                ClipRect(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 15,
                                      sigmaY: 15,
                                    ),
                                    child: Text(
                                      'Absent',
                                      style: TextStyle(
                                          color: AppColor.appWhiteColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text.rich(
                                  TextSpan(
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: AppColor.appWhiteColor,
                                          fontWeight: FontWeight.normal),
                                      children: [
                                        TextSpan(
                                          text: 'Check In Time',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 10,
                                            color: AppColor.appWhiteColor,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n-',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: AppColor.appWhiteColor,
                                          ),
                                        ),
                                      ]),
                                ),
                                SizedBox(width: 20),
                                Text.rich(
                                  TextSpan(
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: AppColor.appWhiteColor,
                                          fontWeight: FontWeight.normal),
                                      children: [
                                        TextSpan(
                                          text: 'Check Out Time',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 10,
                                            color: AppColor.appWhiteColor,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n-',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: AppColor.appWhiteColor,
                                          ),
                                        ),
                                      ]),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.dashboardGreyColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  color: AppColor.appWhiteColor,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'July 19 2023',
                                  style:
                                      TextStyle(color: AppColor.appWhiteColor),
                                ),
                                SizedBox(width: 15),
                                ClipRect(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 15,
                                      sigmaY: 15,
                                    ),
                                    child: Text(
                                      'On Time',
                                      style: TextStyle(
                                          color: AppColor.appWhiteColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text.rich(
                                  TextSpan(
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: AppColor.appWhiteColor,
                                          fontWeight: FontWeight.normal),
                                      children: [
                                        TextSpan(
                                          text: 'Check In Time',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 10,
                                            color: AppColor.appWhiteColor,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n08:30',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: AppColor.appWhiteColor,
                                          ),
                                        ),
                                      ]),
                                ),
                                SizedBox(width: 20),
                                Text.rich(
                                  TextSpan(
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: AppColor.appWhiteColor,
                                          fontWeight: FontWeight.normal),
                                      children: [
                                        TextSpan(
                                          text: 'Check Out Time',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 10,
                                            color: AppColor.appWhiteColor,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n17:15',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: AppColor.appWhiteColor,
                                          ),
                                        ),
                                      ]),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.dashboardGreyColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  color: AppColor.appWhiteColor,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'July 21 2023',
                                  style:
                                      TextStyle(color: AppColor.appWhiteColor),
                                ),
                                SizedBox(width: 15),
                                ClipRect(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 15,
                                      sigmaY: 15,
                                    ),
                                    child: Text(
                                      'Absent',
                                      style: TextStyle(
                                          color: AppColor.appWhiteColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text.rich(
                                  TextSpan(
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: AppColor.appWhiteColor,
                                          fontWeight: FontWeight.normal),
                                      children: [
                                        TextSpan(
                                          text: 'Check In Time',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 10,
                                            color: AppColor.appWhiteColor,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n-',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: AppColor.appWhiteColor,
                                          ),
                                        ),
                                      ]),
                                ),
                                SizedBox(width: 20),
                                Text.rich(
                                  TextSpan(
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: AppColor.appWhiteColor,
                                          fontWeight: FontWeight.normal),
                                      children: [
                                        TextSpan(
                                          text: 'Check Out Time',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 10,
                                            color: AppColor.appWhiteColor,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n-',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: AppColor.appWhiteColor,
                                          ),
                                        ),
                                      ]),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Showing x out of 20  results.',
                  style: TextStyle(color: AppColor.appWhiteColor),
                ),
                Text(
                  'View all',
                  style: TextStyle(
                      color: AppColor.appWhiteColor,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
