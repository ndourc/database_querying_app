import 'package:db_crud_app/time/app_colours.dart';
import 'package:db_crud_app/time/employee_details_widget.dart';
import 'package:db_crud_app/under_work_features/database_id_generation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';
import '../utilities/text_field_input.dart';


class CreateDatabaseScreen extends StatefulWidget {
  const CreateDatabaseScreen({Key? key}) : super(key: key);

  @override
  State<CreateDatabaseScreen> createState() => _CreateDatabaseScreenState();
}

class _CreateDatabaseScreenState extends State<CreateDatabaseScreen> {
  final TextEditingController _databaseIDController = TextEditingController();
  final TextEditingController _databaseNameController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _creatorController = TextEditingController();
  final TextEditingController _dateOfCreationController = TextEditingController();
  

  DateTime _focusedDay = DateTime.now();

  @override
  void dispose(){
    super.dispose();
    _databaseIDController.dispose();
    _databaseNameController.dispose();
    _categoryController.dispose();
    _creatorController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Container(child: Image.asset("assets/Screenshot (342).png")),
              Flexible(flex: 1, child: Container()),
              const SizedBox(height: 32),
              TextFieldInput(
                hintText: generateRandomDatabaseID(),
                textInputType: TextInputType.none,
                  textEditingController: _databaseIDController,
              ),
              const SizedBox(height: 32),
              TextFieldInput(
                hintText: 'Enter database name...',
                textInputType: TextInputType.text,
                  textEditingController: _databaseNameController,
              ),
  // final TextEditingController _creatorController = TextEditingController();
              const SizedBox(height: 32),
              TextFieldInput(
                hintText: 'Database category...',
                textInputType: TextInputType.text,
                  textEditingController: _categoryController,
                ),
              const SizedBox(height: 32),
              TextFieldInput(
                hintText: 'Creator of database...',
                textInputType: TextInputType.name,
                  textEditingController: _creatorController,
              ),
                            const SizedBox(height: 32),
              TextFieldInput(
                hintText: '${DateFormat("dd MMMM yyyy").format(_focusedDay)}',
                textInputType: TextInputType.none,
                  textEditingController: _dateOfCreationController,
              ),
               const SizedBox(height: 24),
              InkWell(
                onTap: () => EmployeeDetailsWidget(),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding:  const EdgeInsets.symmetric(vertical: 12),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.elliptical(100, 100),
                      ),
                    ),
                    color: AppColor.greenAccentColor,
                  ),
                  child: Text('Create Database',
                  style: TextStyle(
                    color: AppColor.appWhiteColor
                  ),
                  ),
                ),
              ),
              const SizedBox(height: 100),
              Flexible(flex: 2, child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    child: Text(
                      "Already have the database?",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: AppColor.appBlackColor,
                      ),  
                    ),
                  ),
                    InkWell(
                      onTap: () {} ,
                      child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      child: Text(' Edit existing database',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: AppColor.greenAccentColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Flexible(flex: 7, child: Container()),
            ],
          ),
        )
      ),
    );
  }
}