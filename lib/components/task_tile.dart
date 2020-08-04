import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final checkBoxCallBack;

  TaskTile({this.isChecked = false, this.title, this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: Checkbox(
        onChanged: checkBoxCallBack,
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
      ),
    );
  }
}
