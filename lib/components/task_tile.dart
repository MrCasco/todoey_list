import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkBoxCallBack;
  final onLongPress;

  TaskTile({this.onLongPress, this.isChecked = false, this.title, this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
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
