import 'package:flutter/material.dart';
import 'package:to_do_app/constants/colors.dart';
import 'package:to_do_app/model/todo.dart';

class ToDoList extends StatelessWidget {
  final todo ToDo;
  final changed;
  final deleted;
  const ToDoList({Key? key,required this.ToDo,required this.changed,required this.deleted}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: ListTile(
      onTap: () {
        changed(ToDo);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      tileColor: Colors.white,
      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      leading: Icon(ToDo.done?Icons.check_box : Icons.check_box_outline_blank,color: tdBlue,),
      title: Text(ToDo.text!,style: TextStyle(fontSize: 16,color: tdBlack,decoration:ToDo.done? TextDecoration.lineThrough : null),),
    trailing: Container(
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.symmetric(vertical: 12),
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        color: tdRed,
        borderRadius: BorderRadius.circular(5)
      ),
      child: IconButton(
        color: Colors.white,
        iconSize: 18,
        icon: Icon(Icons.delete),
        onPressed: () {
          deleted(ToDo.id);
        },
      ),
    ),
    )

    );
  }
}
