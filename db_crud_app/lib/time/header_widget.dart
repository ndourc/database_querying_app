import 'package:flutter/material.dart';
import 'app_colours.dart';
//import 'package:timesheet_manager_app/screens/dashboard.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        children: [
          Text(
            'Dashboard',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Segoe UI Emoji',
              fontWeight: FontWeight.bold,
              color: AppColor.appWhiteColor,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // ADD - Dropdown button style - filter by year, month or even week
              // navigationIcon(icon: Icons.search),
              // navigationIcon(icon: Icons.send),
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
                      'This Year',
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
              const SizedBox(width: 5),
              Icon(Icons.notifications_none_rounded),
            ],
          )
        ],
      ),
    );
  }
}
