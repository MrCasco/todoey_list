import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy water'),
  ];
}
