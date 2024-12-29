import 'package:flutter/material.dart';
import 'package:untitled2/widgets/task_widget.dart';

class EraasoftHomeScreen extends StatelessWidget {
  const EraasoftHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
           'kk'
               ,
            style: TextStyle(color: Colors.grey, fontSize: 20),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: CircleAvatar(child: Icon(Icons.notification_add)))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child:
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Alaaeldin',
                  style: TextStyle(
                      fontSize: 23,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                child: GridView.count(childAspectRatio: 3,mainAxisSpacing: 10,
                crossAxisCount: 2,crossAxisSpacing: 10,
                children: [
                TaskWidget(name: 'Task', nuTask: 'task12'),TaskWidget(name: 'Task app', nuTask: 'task1')
              ,TaskWidget(name: 'Task dart', nuTask: 'task 3'),TaskWidget(name: 'Task speed', nuTask: 'Task3')],
            ),
                    )
                    ,Expanded(child: ListTile(leading: Icon(Icons.nat_outlined),))],
                    ),
          
        ),
        );
  }
}
