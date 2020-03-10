import 'package:flutter/material.dart';
import 'package:todo_list/widgets/taskTile.dart';
import 'package:todo_list/modals/taks.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(title: "task 1"),
    Task(title: "task2"),
    Task(title: "task3")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) => TaskTile(
              taskName: tasks[index].title,
              isChecked: tasks[index].isDone,
              checkBoxCallback: (checkboxState){
                setState(() {
                  tasks[index].toggleDone();
                });
              },
            ));
  }
}
