import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_list/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index){
            return TaskTile(
              onLongPress: (){
                taskData.deleteTask(index);
              },
              title: taskData.getTasks()[index].name,
              isChecked: taskData.getTasks()[index].isDone,
              checkBoxCallBack: (value) {
                taskData.updateTask(taskData.getTasks()[index]);
              }
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}