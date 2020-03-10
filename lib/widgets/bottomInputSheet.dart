import 'package:flutter/material.dart';

class BottomInputSheet extends StatelessWidget {
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
          ),
          Spacer(flex:1),
          FlatButton(color: Colors.lightBlueAccent, onPressed: (){}, child: Text("Add", style: TextStyle(color: Colors.white, fontSize: 20),),),
         // Spacer(flex:12),
        ],),
    );
  }
}
