import 'package:db_crud_app/services/database_store.dart';
import 'package:flutter/material.dart';

class DatabaseCreationPopUp {
  static void show (BuildContext context, Function onSave){
    TextEditingController nameController = TextEditingController();
    TextEditingController categoryController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Create a database'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Database Name'),
              ),
              TextField(
                controller: categoryController,
                decoration: InputDecoration(labelText: 'Category'),
              ),
            ],
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                String name = nameController.text;
                String category = categoryController.text;
                String creator = 'YourCreator';
                String creationDate = DateTime.now().toString();

                onSave(name, category, creator, creationDate);
                Navigator.of(context).pop();
              },
              child: Text('Create'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        ) ;
      }
    );
  }
  
  // void _saveToDatabase(String name, String category, String creator, String creationDate) async {
  //   final dbHelper = DatabaseHelper.instance;
  //   final db = await dbHelper.database;

  //   Map<String, dynamic> row = {
  //     DatabaseHelper.columnName: name,
  //     DatabaseHelper.columnCategory: category,
  //     DatabaseHelper.columnCreator: creator,
  //     DatabaseHelper.columnCreationDate: creationDate,
  //   };

  //   int id = await db.insert(DatabaseHelper.tableName, row);
  //   print('Inserted row id: $id')
  // }
}