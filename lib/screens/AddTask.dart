import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/TaskData.dart';

class AddTask extends StatefulWidget {
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(top: 150),
      color: Color(0xa3E8F5E9),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(
            top: 20,
            left: 50,
            right: 50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.lightGreen,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (val) {
                  setState(() {
                    this.text = val;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: () {
                  if (text != null) {
                    Provider.of<TaskData>(context, listen: false).addTask(text);
                    Navigator.pop(context);
                  }
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                color: Colors.lightGreen,
                padding: EdgeInsets.only(top: 10, bottom: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
