import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_list/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        return TaskTile(
          title: Provider.of<TaskData>(context).tasks[index].name,
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          checkBoxCallBack: (value) {
          }
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}