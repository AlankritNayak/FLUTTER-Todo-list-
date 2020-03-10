import 'package:flutter/material.dart';
import 'screens/task_screen.dart';


main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Task_Screen(),
    );
  }
}