import 'package:flutter/material.dart';

import 'app_colours.dart';

class NotificationCardWidget extends StatefulWidget {
  const NotificationCardWidget({super.key});

  @override
  State<NotificationCardWidget> createState() => _NotificationCardWidgetState();
}

class _NotificationCardWidgetState extends State<NotificationCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColor.sideBarTextColor,
          borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(7),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Employee Details',
                    style: TextStyle(
                        color: AppColor.appWhiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                  // const Spacer(flex: 1),
                  const SizedBox(
                    width: 201,
                  ),
                  /****************************************************
                  Add the search field rather than a search icon/button
                  *****************************************************/
                  const SizedBox(
                    width: 175,
                  ),
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
                        Text(
                          'Download',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColor.appWhiteColor,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: AppColor.appWhiteColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: AppColor.sideBarTextColor,
                    child: Icon(
                      Icons.person,
                      size: 55,
                      color: AppColor.appWhiteColor,
                    ),
                  ),
                  const SizedBox(width: 25),
                  Text.rich(
                    TextSpan(
                        style: TextStyle(
                            fontSize: 17,
                            color: AppColor.mainAccent,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: 'Role',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10,
                              color: AppColor.appWhiteColor,
                            ),
                          ),
                          TextSpan(
                            text: '\nMobile App Dev',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: AppColor.appWhiteColor,
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(width: 20),
                  Text.rich(
                    TextSpan(
                        style: TextStyle(
                            fontSize: 17,
                            color: AppColor.mainAccent,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: 'Phone',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10,
                              color: AppColor.appWhiteColor,
                            ),
                          ),
                          TextSpan(
                            text: '\n+263 71 256 4412',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: AppColor.appWhiteColor,
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(width: 20),
                  Text.rich(
                    TextSpan(
                        style: TextStyle(
                            fontSize: 17,
                            color: AppColor.mainAccent,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: 'Email',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10,
                              color: AppColor.appWhiteColor,
                            ),
                          ),
                          TextSpan(
                            text: '\nndou.research@gmail.com',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: AppColor.appWhiteColor,
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
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
                            Icons.list,
                            color: AppColor.appWhiteColor,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'Client List',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColor.appWhiteColor,
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(width: 15),
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
                          Icons.login_rounded,
                          color: AppColor.appWhiteColor,
                          size: 20,
                        ),
                        const SizedBox(width: 8),
                        Text.rich(
                          TextSpan(
                              style: TextStyle(
                                  fontSize: 17,
                                  color: AppColor.mainAccent,
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                  text: '08:00',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: AppColor.appWhiteColor,
                                  ),
                                ),
                                TextSpan(
                                  text: '\nAvg check-in time',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10,
                                    color: AppColor.appWhiteColor,
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
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
                          Icons.logout_rounded,
                          color: AppColor.appWhiteColor,
                          size: 20,
                        ),
                        const SizedBox(width: 8),
                        Text.rich(
                          TextSpan(
                              style: TextStyle(
                                  fontSize: 17,
                                  color: AppColor.mainAccent,
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                  text: '17:00',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: AppColor.appWhiteColor,
                                  ),
                                ),
                                TextSpan(
                                  text: '\nAvg check-out time',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10,
                                    color: AppColor.appWhiteColor,
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
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
                          Text(
                            'Download \nDetails',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColor.appWhiteColor,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: AppColor.appWhiteColor,
                          ),
                        ],
                      )),
                ],
              ),
            ],
          ),
          const Spacer(),
          // Image.asset('assets/n')
        ],
      ),
    );
  }
}