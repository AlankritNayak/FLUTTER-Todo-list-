import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/widgets/taskTile.dart';
import 'package:todo_list/modals/taks.dart';
import 'package:todo_list/modals/task_list_modal.dart';


class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Provider.of<Task_List_Modal>(context).tasks.length,
        itemBuilder: (context, index) => TaskTile(
              taskName: Provider.of<Task_List_Modal>(context).tasks[index].title,
              isChecked:Provider.of<Task_List_Modal>(context).tasks[index].isDone,
              checkBoxCallback: (checkboxState){
                setState(() {
                  Provider.of<Task_List_Modal>(context, listen: false).tasks[index].toggleDone();
                });
              },
            ));
  }
}
