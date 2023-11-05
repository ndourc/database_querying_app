import 'package:db_crud_app/services/mysql.dart';
import 'package:flutter/material.dart';
import 'package:db_crud_app/utilities/app_colours.dart';
import 'package:db_crud_app/time/sidebar_menu.dart';
//import '../utilities/calendar.dart';
import '../time/dashboard.dart';
//import '../utilities/data_table.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  var db = new Mysql();
  var mail = '';

  void _getCustomer(){
    db.getConnection().then((conn){
      String sql = 'Select mail from company.customer where id = 10;';
      conn.query(sql).then((results) {
        setState(() {
          for(var row in results){
            setState(() {
              mail = row[0];
            });
          }
        });
      });
    });
  }

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