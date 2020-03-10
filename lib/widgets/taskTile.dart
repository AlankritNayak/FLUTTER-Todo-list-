import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {  
  final bool isChecked;
  final String taskName;
  final Function checkBoxCallback;
  TaskTile({this.isChecked, this.taskName, this.checkBoxCallback});
  Widget build(BuildContext context) {
    return ListTile(
                    leading: Text(taskName, style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),),
                    trailing: Checkbox(
                      value: isChecked,
                      onChanged: checkBoxCallback,
                    )
                  );
  }
}

