import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/TaskData.dart';
import 'package:todoapp/widget/TaskTille.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, task, child) => ListView.builder(
        itemBuilder: (context, index) => Dismissible(
          key: Key(task.tasks[index].name),
          background: Container(color: Colors.red),
          onDismissed: (direction) {
            task.removeTask(index);
          },
          child: TaskTille(
            text: task.tasks[index].name,
            isChecked: task.tasks[index].isDone,
            fn: (val) {
              task.taskDone(index);
            },
          ),
        ),
        itemCount: task.tasksCount,
      ),
    );
  }
}
