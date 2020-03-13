import 'package:flutter/material.dart';
import 'screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/modals/task_list_modal.dart';


main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Task_List_Modal>(
        create: (context) => Task_List_Modal(),
          child: MaterialApp(
        home: Task_Screen(),
      ),
    );
  }
}