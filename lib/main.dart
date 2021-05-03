import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/TaskData.dart';
import 'package:todoapp/screens/TaskView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaskViewScreen(),
      ),
    );
  }
}
