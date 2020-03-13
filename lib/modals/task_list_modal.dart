import 'package:todo_list/modals/taks.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';
import 'package:todo_list/database.dart';


class Task_List_Modal extends ChangeNotifier{
    Task_List_Modal(){
      _getUpdatedList();
    }
    Database_todo _db = new Database_todo();
    List<Task> _tasks = [];
    List<Task> _updatedList;
    void _getUpdatedList() async{
      _updatedList = await _db.getTasks();
      _tasks = _updatedList;
      print(_updatedList);
      notifyListeners();
    }

    void addTask(String newString) async{
      Database_todo db = new Database_todo(); 
      _tasks.add(Task(title: newString));
      notifyListeners();
     await _db.insertTask(Task(title: newString));
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
      _db.deleteItem(task);
      _db.insertTask(task);
    }

    void deleteTask(Task task){
      _tasks.remove(task);
      notifyListeners();
      _db.deleteItem(task);
    }
}