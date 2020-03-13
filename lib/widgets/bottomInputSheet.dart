import 'package:flutter/material.dart';
import 'package:todo_list/modals/task_list_modal.dart';
import 'package:provider/provider.dart';


class BottomInputSheet extends StatelessWidget {
  String newTask = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          Spacer(flex:2),
          Text("Add Task", style: TextStyle(color: Colors.lightBlueAccent, fontWeight: FontWeight.w500, fontSize: 30,),textAlign: TextAlign.center,),
          Spacer(flex:1),
          TextField(textAlign: TextAlign.center, 
          autofocus: true,
          onChanged: (newValue){
            newTask = newValue;
          },
          ),
          Spacer(flex:1),
          FlatButton(color: Colors.lightBlueAccent, onPressed: (){
            Provider.of<Task_List_Modal>(context, listen: false).addTask(newTask);
            Navigator.pop(context);
          }, child: Text("Add", style: TextStyle(color: Colors.white, fontSize: 20),),),
         // Spacer(flex:12),
        ],),
    );
  }
}
