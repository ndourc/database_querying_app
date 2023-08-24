import 'package:flutter/material.dart';
import 'app_colours.dart';
import 'calendar.dart';

class DataTableUI extends StatefulWidget {
  @override
  _DataTableUIState createState() => _DataTableUIState();
}


class _DataTableUIState extends State<DataTableUI> {
  final List<Map<String, dynamic>> _allData = [
    {
      'ID': 10001,
      'Asset Name': 'BACK OFFICE MACHINE',
      'Category': 'Workstation',
      'Serial Number': '4CE236CYQW',
      'Brand/Model': 'HP',
      'YoP': 2023,
      'IP Address': '',
      'Tag Number': '',
      'User': 'Multi-User',
      'Complex': 'Westgate Complex',
      'Brand': 'All',
      'Captured By': 'Norest Mabhunu',
    },
    {
      'ID': 10002,
      'Asset Name': 'KDS',
      'Category': 'Workstation',
      'Serial Number': '4CE236CYQW',
      'Brand/Model': 'Asus',
      'YoP': 2022,
      'IP Address': '198.125.160.97',
      'Tag Number': '',
      'User': 'Multi-User',
      'Complex': 'Lobourne Complex',
      'Brand': 'All',
      'Captured By': 'Zaphenat Phaneah',
    },
    {
      'ID': 10003,
      'Asset Name': 'BACK OFFICE',
      'Category': 'Workstation',
      'Serial Number': '4CE236CYQW',
      'Brand/Model': 'Asus',
      'YoP': 2022,
      'IP Address': '198.125.160.90',
      'Tag Number': '',
      'User': 'Multi-User',
      'Complex': 'Thelwalls Complex',
      'Brand': 'All',
      'Captured By': 'Mpendulo Dlamini',
    },
  ];

  List<Map<String, dynamic>> _filteredData = [];

  @override
  void initState() {
    super.initState();
    _filteredData = _allData.take(10).toList();
  }

  void _applyFilters(int? year, String? complex) {
    setState(() {
      _filteredData = _allData.where((data) {
        bool matchesYear = year == null || data['YoP'] == year;
        bool matchesComplex =
            complex == null || data['Complex'].toLowerCase().contains(complex.toLowerCase());
        return matchesYear && matchesComplex;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ... existing code ...

        body: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColor.appWhiteColor,
            borderRadius: BorderRadius.circular(30),
          ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        onChanged: (value) {
                          int? year;
                          if (value.isNotEmpty) {
                            year = int.tryParse(value);
                            if (year == null) {
                              return;
                            }
                          }
                          _applyFilters(year, null);
                        },
                        decoration: InputDecoration(
                          hintText: 'Filter by YoP',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        onChanged: (value) {
                          _applyFilters(null, value);
                        },
                        decoration: InputDecoration(
                          hintText: 'Filter by Complex',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CalendarWidget(), // Your CalendarWidget goes here
            SizedBox(height: 16),
            Divider(),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: _allData.first.keys
                      .map((String key) => DataColumn(label: Text(key)))
                      .toList(),
                  rows: _filteredData
                      .map((data) => DataRow(
                            cells: data.values
                                .map((value) => DataCell(Text(value.toString())))
                                .toList(),
                          ))
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}