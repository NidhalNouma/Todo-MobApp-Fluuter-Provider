import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/Tadks.dart';
import 'package:todoapp/models/TaskData.dart';
import 'package:todoapp/screens/AddTask.dart';
import 'package:todoapp/widget/TaskList.dart';

class TaskViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              barrierColor: Color(0xa3E8F5E9),
              // isScrollControlled: true,
              context: context,
              builder: (context) => AddTask(),
            );
          },
          backgroundColor: Colors.lightGreen,
          child: Icon(
            Icons.add,
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 60,
                  left: 30,
                  right: 30,
                  bottom: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: Icon(
                        Icons.list,
                        color: Colors.green,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Todo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '${Provider.of<TaskData>(context).tasksCount} task',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                  ),
                  child: TaskList(),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
