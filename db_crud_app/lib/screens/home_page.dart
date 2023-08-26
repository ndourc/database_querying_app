import 'package:flutter/material.dart';
import 'package:db_crud_app/utilities/app_colours.dart';
import 'package:db_crud_app/time/sidebar_menu.dart';
//import '../utilities/calendar.dart';
import '../time/dashboard.dart';
import '../utilities/data_table.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appWhiteColor,
      drawer: const SideBar(),
      body: const SafeArea(
        child: Row(
          children: [
            Expanded(
              child: SideBar(),
            ),
            Expanded(
              flex: 4,
              child: Dashboard(),
              )
          ],
        ),
      ),
    );
  }
}
