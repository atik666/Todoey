import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier{

  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Go to gym'),
    Task(name: 'write papers'),
  ];

}