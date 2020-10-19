import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task.',
      ),
      trailing: Checkbox(
        value: false,
      ),
    );
  }
}