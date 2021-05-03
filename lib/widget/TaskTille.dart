import 'package:flutter/material.dart';

class TaskTille extends StatelessWidget {
  final String text;
  final bool isChecked;
  final Function fn;

  TaskTille({this.text, this.isChecked = false, this.fn});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightGreen,
        value: isChecked,
        onChanged: fn,
      ),
    );
  }
}
