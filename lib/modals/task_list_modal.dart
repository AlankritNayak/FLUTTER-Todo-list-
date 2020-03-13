import 'package:provider/provider.dart';
import 'package:todo_list/modals/taks.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';
import 'package:todo_list/database.dart';


class Task_List_Modal extends ChangeNotifier{
    List<Task> _tasks = [];
    void addTask(String newString){
      Database_todo db = new Database_todo(); 
      _tasks.add(Task(title: newString));
      notifyListeners();
    }

    int get taskCount {
      return _tasks.length;
    }

    UnmodifiableListView<Task> get tasks {
      return UnmodifiableListView(_tasks);
    }

    void updateTask(Task task){
      task.toggleDone();
      notifyListeners();
    }

    void deleteTask(Task task){
      _tasks.remove(task);
      notifyListeners();
    }
}