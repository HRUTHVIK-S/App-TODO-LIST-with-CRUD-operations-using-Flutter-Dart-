import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String taskname;
  final bool taskvalue;
  final Function(bool?)? onChanged;
  final Function(BuildContext?)? deletefunction;
  final Function(String) onTaskEdited;

  const TodoTile({
    super.key,
    required this.taskname,
    required this.taskvalue,
    required this.onChanged,
    required this.deletefunction,
    required this.onTaskEdited,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: Slidable(
        key: const ValueKey(0),
        endActionPane: ActionPane(
          motion: const DrawerMotion(),
          children: [
            SlidableAction(
              onPressed: deletefunction,
              backgroundColor: Colors.red.shade400,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              borderRadius: BorderRadius.circular(12),
              label: 'Delete',
            ),
          ],
        ),
        child: GestureDetector(
          onTap: () async {
            final newTaskName = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EditTaskScreen(taskname: taskname),
              ),
            );
            if (newTaskName != null && newTaskName.isNotEmpty) {
              onTaskEdited(newTaskName);
            }
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xff76c7c0), Color(0xff66a6ff)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
            child: Row(
              children: [
                Checkbox(
                  value: taskvalue,
                  onChanged: onChanged,
                  activeColor: Colors.teal,
                ),
                Expanded(
                  child: Text(
                    taskname,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      decoration: taskvalue
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EditTaskScreen extends StatefulWidget {
  final String taskname;

  const EditTaskScreen({
    Key? key,
    required this.taskname,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _EditTaskScreenState createState() => _EditTaskScreenState();
}

class _EditTaskScreenState extends State<EditTaskScreen> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.taskname);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Task'),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              Navigator.pop(context, _controller.text);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _controller,
          maxLines: null,
          decoration: const InputDecoration(
            labelText: 'Task Name',
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
