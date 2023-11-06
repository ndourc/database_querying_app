import 'package:db_crud_app/screens/home_page.dart';
import 'package:db_crud_app/feature_works/create_database_work.dart';
import 'package:flutter/material.dart';
//import 'package:theme_app/themes.dart';
//import 'package:db_crud_app/utilities/sidebar_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Database Querying App',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      //theme: ThemeClass.lightTheme,
      //home: HomePage(title: 'DB Connection')
      home: CreateDatabaseScreen(),
    );
  }
}