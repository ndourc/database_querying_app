import 'dart:ui';
import 'package:flutter/material.dart';
import 'app_colours.dart';

class EmployeeDetailsWidget extends StatelessWidget {
  const EmployeeDetailsWidget({
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColor.sideBarTextColor,
          borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Container(
                  decoration: BoxDecoration(
                      color: AppColor.greenAccentColor,
                      borderRadius: BorderRadius.circular(20)),
                  height: 30,
                  width: 5,
                  padding: const EdgeInsets.all(20),
                ),
                const SizedBox(width: 10),
                Text(
                  "Available Databases",
                  style: TextStyle(
                      //fontFamily: ,
                      color: AppColor.appWhiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ]),
              //SizedBox(width: 10),
              Row(children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.greenAccentColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: AppColor.appWhiteColor,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Sort',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.appWhiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.greenAccentColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.filter_alt_outlined,
                        color: AppColor.appWhiteColor,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Filter',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.appWhiteColor,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: AppColor.appWhiteColor,
                      ),
                    ],
                  ),
                ),
              ])
            ],
          ),
          Divider(
            thickness: 0.5,
            color: AppColor.appWhiteColor,
          ),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: AppColor.dashboardGreyColor,
                  width: 0.5,
                ))),
                children: [
                  tableHeader("Database ID"),
                  tableHeader("Database Name"),
                  tableHeader("Date of Creation"),
                  tableHeader("Category"),
                  tableHeader("Creator")
                ],
              ),
              // TableRow(
              //   decoration: BoxDecoration(
              //       border: Border(
              //           bottom: BorderSide(
              //     color: AppColor.dashboardGreyColor,
              //     width: 0.5,
              //   ))),
              //   children: [
              //     InkWell(onTap: () {}, child: tableHeader("1")),
              //     InkWell(
              //         onTap: () {},
              //         child: tableHeader("2022 IT Assets Register")),
              //     InkWell(onTap: () {}, child: tableHeader("01/08/2023")),
              //     InkWell(onTap: () {}, child: tableHeader("IT Register")),
              //     InkWell(onTap: () {}, child: tableHeader("Henry Ndou"))
              //   ],
              // ),
              // TableRow(
              //   decoration: BoxDecoration(
              //       border: Border(
              //           bottom: BorderSide(
              //     color: AppColor.dashboardGreyColor,
              //     width: 0.5,
              //   ))),
              //   children: [
              //     InkWell(onTap: () {}, child: tableHeader("2")),
              //     InkWell(onTap: () {}, child: tableHeader("Warehouse HO")),
              //     InkWell(onTap: () {}, child: tableHeader("21/08/2023")),
              //     InkWell(onTap: () {}, child: tableHeader("Warehouse")),
              //     InkWell(onTap: () {}, child: tableHeader("Zaphenat Phaneah"))
              //   ],
              // ),
              // TableRow(
              //   decoration: BoxDecoration(
              //       border: Border(
              //           bottom: BorderSide(
              //     color: AppColor.dashboardGreyColor,
              //     width: 0.5,
              //   ))),
              //   children: [
              //     InkWell(onTap: () {}, child: tableHeader("3")),
              //     InkWell(onTap: () {}, child: tableHeader("Stats")),
              //     InkWell(onTap: () {}, child: tableHeader("15/08/2023")),
              //     InkWell(
              //         onTap: () {},
              //         child: tableHeader("Stats Assets Register")),
              //     InkWell(onTap: () {}, child: tableHeader("Mercy Ncube"))
              //   ],
              // ),
              // TableRow(
              //   decoration: BoxDecoration(
              //       border: Border(
              //           bottom: BorderSide(
              //     color: AppColor.dashboardGreyColor,
              //     width: 0.5,
              //   ))),
              //   children: [
              //     InkWell(onTap: () {}, child: tableHeader("4")),
              //     InkWell(onTap: () {}, child: tableHeader("Assets  Register")),
              //     InkWell(onTap: () {}, child: tableHeader("17/08/2023")),
              //     InkWell(onTap: () {}, child: tableHeader("IT Register")),
              //     InkWell(onTap: () {}, child: tableHeader("Henry Ndou"))
              //   ],
              // ),
            ],
          )
        ],
      ),
    );
  }

  Widget tableHeader(text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.normal, color: AppColor.appWhiteColor),
      ),
    );
  }
}
