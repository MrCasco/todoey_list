import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy water'),
  ];

  List<Task> getTasks () => _tasks;

  int get taskCount{
    return _tasks.length;
  }

  void addTask(String newTask){
    _tasks.add(Task(name: newTask));
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(int index){
    _tasks.removeAt(index);
    notifyListeners();
  }
}
