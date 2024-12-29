import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  final String name;
  final String nuTask;

  const TaskWidget({required this.name, required this.nuTask ,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(child: Icon(Icons.book_online_sharp)),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(
                name,
                style: TextStyle(color: Colors.white, fontSize: 18),
              )
              ,SizedBox(height: 10,),Text(nuTask,style: TextStyle(color: Colors.white,fontSize: 15),)],
          )
        ],
      ),
      width: 180,
      height: 70,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15)),
    );
  }
}
