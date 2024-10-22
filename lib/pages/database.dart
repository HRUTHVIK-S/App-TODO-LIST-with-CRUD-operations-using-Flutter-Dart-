import 'package:hive/hive.dart';

// ignore: camel_case_types
class toDoList {
  List<Map<String, dynamic>> tasks = [];
  final _myBox = Hive.box('mybbox');

  void loaddata() {
    if (_myBox.get('TODOLIST') == null) {
      createInitialData();
    } else {
      tasks = List<Map<String, dynamic>>.from(
        (_myBox.get('TODOLIST') as List).map(
          (item) => Map<String, dynamic>.from(item),
        ),
      );
    }
  }

  void createInitialData() {
    tasks = [
      {'taskname': 'Task 1', 'taskvalue': false},
      {'taskname': 'Task 2', 'taskvalue': false},
      {'taskname': 'Task 3', 'taskvalue': false},
      {'taskname': 'Task 4', 'taskvalue': false},
      {'taskname': 'Task 5', 'taskvalue': false},
    ];
    updateDatabase();
  }

  void updateDatabase() {
    _myBox.put('TODOLIST', tasks);
  }
}
