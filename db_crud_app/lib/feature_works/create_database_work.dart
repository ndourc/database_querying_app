import 'package:flutter/material.dart';
import 'package:db_crud_app/under_work_features/db_conn.dart';
import 'package:intl/intl.dart';
import '../time/app_colours.dart';
import 'package:db_crud_app/under_work_features/db_helper.dart';
import '../under_work_features/database_id_generation.dart';
import '../utilities/text_field_input.dart';


class CreateDatabaseScreen extends StatelessWidget {
  final MyDatabases? adatabase;
  const CreateDatabaseScreen({
    Key? key,
    this.adatabase
  }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {

  final databaseIDController = TextEditingController();
  final databaseNameController = TextEditingController();
  final dateOfCreationController = TextEditingController();
  final categoryController = TextEditingController();
  final creatorController = TextEditingController();

  DateTime focusedDay = DateTime.now();

  if(adatabase != null){
    databaseIDController.text = adatabase!.database_id;
    databaseNameController.text = adatabase!.database_name;
    dateOfCreationController.text = adatabase!.date_of_creation as String;
    categoryController.text = adatabase!.category;
    creatorController.text = adatabase!.creator;
  }

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
                  textEditingController: databaseIDController,
              ),
              const SizedBox(height: 32),
              TextFieldInput(
                hintText: 'Enter database name...',
                textInputType: TextInputType.text,
                  textEditingController: databaseNameController,
              ),
  // final TextEditingController _creatorController = TextEditingController();
              const SizedBox(height: 32),
              TextFieldInput(
                hintText: 'Database category...',
                textInputType: TextInputType.text,
                  textEditingController: categoryController,
                ),
              const SizedBox(height: 32),
              TextFieldInput(
                hintText: 'Creator of database...',
                textInputType: TextInputType.name,
                  textEditingController: creatorController,
              ),
                            const SizedBox(height: 32),
              TextFieldInput(
                hintText: '${DateFormat("dd MMMM yyyy").format(focusedDay)}',
                textInputType: TextInputType.none,
                  textEditingController: dateOfCreationController,
              ),
               const SizedBox(height: 24),
              // InkWell(
              //   onTap: () => EmployeeDetailsWidget(),
              //   child: Container(
              //     width: double.infinity,
              //     alignment: Alignment.center,
              //     padding:  const EdgeInsets.symmetric(vertical: 12),
              //     decoration: ShapeDecoration(
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.all(Radius.elliptical(100, 100),
              //         ),
              //       ),
              //       color: AppColor.greenAccentColor,
              //     ),
              //     child: Text('Create Database',
              //     style: TextStyle(
              //       color: AppColor.appWhiteColor
              //     ),
              //     ),
              //   ),
              // ),
              ElevatedButton(
                onPressed: () async {
                  final database_id = generateRandomDatabaseID();
                  final database_name = databaseNameController.value.text;
                  final date_of_creation = dateOfCreationController.value.text;
                  final category = categoryController.value.text;
                  final creator = creatorController.value.text;
 
                  if (database_id.isEmpty || database_name.isEmpty || date_of_creation.isEmpty || category.isEmpty || creator.isEmpty){
                    return;
                  }
                  final MyDatabases model = MyDatabases(database_id: database_id, database_name: database_name, date_of_creation: date_of_creation, category: category, creator: creator);
                  if(adatabase == null){
                    await DatabaseHelper.addDatabase(model);
                  } else {
                    await DatabaseHelper.updateAvailableDatabases(model);
                  }
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    const RoundedRectangleBorder(
                      side: BorderSide()
                    )
                  )
                ),
                child: ,



                ////////////////////////////////////////////////////////
                //EDIT THE CHILD PROPERTY OF THE ELEVTAEDBUTTON WIDGET//
                ////////////////////////////////////////////////////////

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
      )
      );
  }
}