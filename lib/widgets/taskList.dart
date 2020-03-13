import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/widgets/taskTile.dart';
import 'package:todo_list/modals/taks.dart';
import 'package:todo_list/modals/task_list_modal.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Task_List_Modal>(
      builder: (context, taskList, child) {
        return ListView.builder(
            itemCount: taskList.taskCount,
            itemBuilder: (context, index) {
              final task = taskList.tasks[index];
              return TaskTile(
                taskName: task.title,
                isChecked: task.isDone,
                checkBoxCallback: (checkboxState) {
                  taskList.updateTask(task);
                },
                deleteCallback: (){
                  taskList.deleteTask(task);
                },
              );
            });
      },
    );
  }
}
