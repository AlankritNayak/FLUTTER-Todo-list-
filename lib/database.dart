import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:todo_list/modals/taks.dart';

class Database_todo {
  Database_todo() {
    _initialize_db();
  }

  Database _database;
  void _initialize_db() async {
    var databasePath = await getDatabasesPath();
    String path = join(databasePath, 'todoList.db');
    _database = await openDatabase(
      path,
      onCreate: (Database db, int version) async {
        await db.execute(
            'CREATE TABLE tasks (task_id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, isDone INTEGER)');
      },
      version: 1,
    );
  }

  Future insertTask(Task task) async {
    int isDone;
    if (task.isDone)
      isDone = 1;
    else if (!task.isDone) isDone = 0;
    String title = task.title;
    await _database.insert('tasks', {'title': title, 'isDone': isDone});
  }

  Future getTasks() async{
    List<Task> task_list = [];
     final List<Map<String, dynamic>> maps = await _database.query('tasks');
     for(Map map in maps){
       bool isDone;
        if (map['isDone']==1)
       isDone = true;
    else if (map['isDone'] == 0) isDone = false;
       task_list.add(Task(title: map['title'], isDone: isDone));
     }
     return task_list;
  }
}
