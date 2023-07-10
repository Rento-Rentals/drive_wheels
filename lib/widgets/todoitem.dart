// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import '../constants/colors.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: ListTile(
        onTap: ()=>{
          print("Todo Clicked")
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        leading: const Icon(
          Icons.check_box,
          color: tdViolet,
        ),
        title: const Text(
          'Todo Tiles',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.lineThrough),
        ),
        subtitle: const Text(
          'Todo Description',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.lineThrough),
        ),
        trailing: Container(
          child: IconButton(
            icon: Icon(Icons.delete),
            color: tdRed,
            onPressed: () {
              print("Todo Deleted")
            },
          ),
        ),
        tileColor: tdDullWhite,
      ),
    );
  }
}
