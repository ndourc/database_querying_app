import 'package:flutter/material.dart';
import 'app_colours.dart';

var myDefaultBackGround = AppColor.appWhiteColor;

var myAppBar = AppBar(
  backgroundColor: AppColor.mainAccent,
);

var myDrawer = Drawer(
  backgroundColor: AppColor.appWhiteColor,
  child: Column(
    children: [
      DrawerHeader(
        child: Text(
          'Welcome To \nbaobab.db',
          style: TextStyle(
              color: AppColor.greenAccentColor,
              fontFamily: 'Bradley Hand ITC',
              fontSize: 40,
              fontWeight: FontWeight.bold),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: AppColor.mainAccent,
        ),
        title: Text('H O M E'),
      ),
      ListTile(
        leading: Icon(
          Icons.file_upload_rounded,
          color: AppColor.mainAccent,
        ),
        title: Text('I M P O R T'),
      ),
      ListTile(
        leading: Icon(
          Icons.settings,
          color: AppColor.mainAccent,
        ),
        title: Text('S E T T I N G S'),
      ),
      ListTile(
        leading: Icon(
          Icons.arrow_circle_right_outlined,
          color: AppColor.mainAccent,
        ),
        title: Text('L O G O U T'),
      ),
    ],
  ),
);
