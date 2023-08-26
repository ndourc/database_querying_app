import 'package:flutter/material.dart';
import 'app_colours.dart';

class OtherWidgets extends StatelessWidget {
  const OtherWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.sideBarTextColor,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: AppColor.sideBarTextColor,
                  child: Icon(
                    Icons.person,
                    size: 29,
                    color: AppColor.appWhiteColor,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    'Henry Ndou',
                    style: TextStyle(
                      color: AppColor.appWhiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Flutter and ML Engineer',
                    style: TextStyle(
                      color: AppColor.appWhiteColor,
                      fontWeight: FontWeight.normal,
                    ),
                  )
                ],
              )
            ],
          ),
          Divider(
            thickness: 0.5,
            color: AppColor.appWhiteColor,
          ),
          profileListTile('Joined Date', '17 May 2023'),
          profileListTile('Projects', '107 Active'),
          profileListTile('Accomplishments', '597'),
          profileListTile('Contract Until', '15 August 2025')
        ],
      ),
    );
  }

  Widget profileListTile(text, value) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(color: AppColor.appWhiteColor),
          ),
          Text(
            value,
            style: TextStyle(
                color: AppColor.appWhiteColor,
                fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}
