import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Database Querying App',
      theme: ThemeData(
        //primarySwatch: Color.blue,
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const DatabaseScreen(),
    );
  }
}
final ThemeData AppThemeData = ThemeData(
  brightness: Brightness.light, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: CompanyColors.black[500])
);



mixin CompanyColors {
  static var black;
}class DatabaseScreen extends StatefulWidget {
  const DatabaseScreen({Key? key}) : super(key: key);

  @override
  _DatabaseScreenState createState() => _DatabaseScreenState();
}

class _DatabaseScreenState extends State<DatabaseScreen> {
  late Database _database;

  TextEditingController assetnameController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController serialNumberController = TextEditingController();
  TextEditingController brandController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initializeDatabase();
  }

  Future<void> _initializeDatabase() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'my_database.db');

    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE records(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
        );
      },
    );
  }

  Future<void> _insertRecord() async {
    await _database.insert(
      'records',
      {'name': assetnameController.text, 'age': 0}, // Change age to an appropriate value
    );
  }

  Future<void> _retrieveRecords() async {
    final records = await _database.query('records');
    // Process retrieved records as needed
  }

  Future<void> _updateRecord(int id, String name, int age) async {
    await _database.update(
      'records',
      {'name': name, 'age': age},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> _deleteRecord(int id) async {
    await _database.delete(
      'records',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Database Querying App')),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTextFieldWithButton(
                  assetnameController,
                  'Asset Name',
                  'Insert',
                  _insertRecord,
                ),
                const SizedBox(height: 16.0),
                _buildTextFieldWithButton(
                  categoryController,
                  'Category',
                  'Retrieve',
                  _retrieveRecords,
                ),
                const SizedBox(height: 16.0),
                _buildTextFieldWithButton(
                  serialNumberController,
                  'Serial Number',
                  'Update',
                  () => _updateRecord(1, 'Jane Smith', 30),
                ),
                const SizedBox(height: 16.0),
                _buildTextFieldWithButton(
                  brandController,
                  'Brand/Model',
                  'Delete',
                  () => _deleteRecord(1),
                ),
                const SizedBox(height: 24.0),
                Center(
                  child: Text(
                    'Welcome to Database Querying App',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                const SizedBox(height: 8.0),
                Center(
                  child: Text(
                    'Store and manage your records with ease.',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildActionButton('Insert', _insertRecord),
                  SizedBox(width: 16.0),
                  _buildActionButton('Retrieve', _retrieveRecords),
                  SizedBox(width: 16.0),
                  _buildActionButton('Update', () => _updateRecord(1, 'Jane Smith', 30)),
                  SizedBox(width: 16.0),
                  _buildActionButton('Delete', () => _deleteRecord(1)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(String label, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: () async {
        onPressed();
        ScaffoldMessenger.of(context as BuildContext).showSnackBar(
          SnackBar(content: Text('$label successful!')),
        );
      },
      child: Text(label),
    );
  }

  Widget _buildTextFieldWithButton(
    TextEditingController controller,
    String labelText,
    String buttonLabel,
    VoidCallback onPressed,
  ) {
    return Column(
      children: [
        TextField(
          controller: controller,
          decoration: InputDecoration(
            labelText: labelText,
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 12.0),
      ],
    );
  }

}

