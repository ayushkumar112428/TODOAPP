// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:todoapp/constantn/color.dart';
import 'package:todoapp/model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;
  const ToDoItem({Key? key, required this.todo, this.onToDoChanged, this.onDeleteItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
        },
        contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
          ),
        title: Text(todo.todoText!,
        style: TextStyle(fontSize: 16,color: tdBlack,
        decoration: todo.isDone? TextDecoration.lineThrough:null,
        ),
        ),
        trailing: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.all(0),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: (){onDeleteItem(todo.id);}, 
            iconSize: 18,
            color: Colors.white,
            icon: const Icon(Icons.delete),
            ),
        ),
      ),
    );
  }
}
