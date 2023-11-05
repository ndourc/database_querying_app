class MyDatabases {
  final  database_id;
  final String database_name;
  final DateTime date_of_creation;
  final String category;
  final String creator;

  const MyDatabases({
    required this.database_id,
    required this.database_name,
    required this.date_of_creation,
    required this.category,
    required this.creator
  });
  factory MyDatabases.fromJson(Map<String,dynamic> json) => MyDatabases(
    database_id: json['database_id'],
    database_name: json['database_name'],
    date_of_creation: json['date_of_creation'],
    category: json['category'],
    creator: json['creator']
  );

Map<String,dynamic> toJson() => {
  'database_id': database_id,
  'database_name': database_name,
  'date_of_creation': date_of_creation,
  'category': category,
};
}