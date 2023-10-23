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
                    'Recent Database',
                    style: TextStyle(
                      color: AppColor.appWhiteColor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    'Assets Register.db',
                    style: TextStyle(
                      color: AppColor.appWhiteColor,
                      fontWeight: FontWeight.bold,
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
          profileListTile('Date of Creation', '17 August 2023'),
          profileListTile('Records', '11 127'),
          profileListTile('Columns', '59'),
          profileListTile('Last Edited', '19 August 2025')
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
