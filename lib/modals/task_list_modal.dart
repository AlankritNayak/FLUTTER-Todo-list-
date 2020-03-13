import 'package:provider/provider.dart';
import 'package:todo_list/modals/taks.dart';
import 'package:flutter/material.dart';


class Task_List_Modal extends ChangeNotifier{
    List<Task> tasks = [];
    void addTask(String newString){
      tasks.add(Task(title: newString));
      notifyListeners();
    }
}