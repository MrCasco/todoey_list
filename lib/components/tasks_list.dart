import 'package:flutter/material.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  final List tasks;
  TasksList(this.tasks);
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        return TaskTile(
          title: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkBoxCallBack: (value) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          }
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}