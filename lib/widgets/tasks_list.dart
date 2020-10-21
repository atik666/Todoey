import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Go to gym'),
    Task(name: 'write papers'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(taskTitle: tasks[index].name,
        isChecked: tasks[index].isDone,
        checkboxCallback: ( bool checkboxState){
        setState(() {
          tasks[index].toggleDone();
        });
      },
      );
    },
      itemCount: tasks.length,
    );
  }
}