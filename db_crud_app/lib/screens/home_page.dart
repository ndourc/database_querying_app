import 'package:flutter/material.dart';
import 'package:db_crud_app/utilities/app_colours.dart';
import 'package:db_crud_app/utilities/sidebar_menu.dart';
//import '../utilities/calendar.dart';
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
      appBar: AppBar(
        backgroundColor: AppColor.mainAccent,
      ),
      backgroundColor: AppColor.appWhiteColor,
      drawer: myDrawer,
      body: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColor.appWhiteColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: SafeArea(
          child: Row(
            children: [
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // CalendarWidget(),
                    // SizedBox(width: 1),
                    DataTableUI(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
