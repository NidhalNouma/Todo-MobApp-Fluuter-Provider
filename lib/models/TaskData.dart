import 'package:flutter/foundation.dart';
import 'package:todoapp/models/Tadks.dart';

class TaskData extends ChangeNotifier {
  List<Tasks> tasks = [
    Tasks(name: 'Add your Tasks'),
  ];

  int get tasksCount => tasks.length;

  void addTask(String task) {
    tasks.add(Tasks(name: task));
    notifyListeners();
  }

  void taskDone(int index) {
    tasks[index].togleDone();
    notifyListeners();
  }

  void removeTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }
}
