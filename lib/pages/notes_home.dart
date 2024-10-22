// ignore: file_names
import 'package:flutter/material.dart';
import 'package:learndart/pages/database.dart';
import 'package:learndart/pages/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  toDoList db = toDoList();

  @override
  void initState() {
    super.initState();
    db.loaddata();
  }

  void toggleCheckbox(bool? value, int index) {
    setState(() {
      db.tasks[index]['taskvalue'] = value!;
      db.updateDatabase();
    });
  }

  void deletetask(int index) {
    setState(() {
      db.tasks.removeAt(index);
      db.updateDatabase();
    });
  }

  void createnewtask() {
    TextEditingController newTaskController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Create New Task'),
          content: TextField(
            controller: newTaskController,
            decoration: const InputDecoration(hintText: 'Enter task name'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (newTaskController.text.isNotEmpty) {
                  setState(() {
                    db.tasks.insert(0, {
                      'taskname': newTaskController.text,
                      'taskvalue': false,
                    });
                    db.updateDatabase();
                  });
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Add Task'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'TO DO',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createnewtask,
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff0072ff),
              Color(0xff00c6ff),
              Color(0xff00ff99),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
          itemCount: db.tasks.length,
          itemBuilder: (context, index) {
            return TodoTile(
              taskname: db.tasks[index]['taskname'],
              taskvalue: db.tasks[index]['taskvalue'],
              onChanged: (value) => toggleCheckbox(value, index),
              deletefunction: (context) => deletetask(index),
              onTaskEdited: (newTaskName) {
                setState(() {
                  db.tasks[index]['taskname'] = newTaskName;
                  db.updateDatabase();
                });
              },
            );
          },
        ),
      ),
    );
  }
}
