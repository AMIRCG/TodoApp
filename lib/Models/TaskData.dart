// ignore_for_file: file_names, recursive_getters

import 'package:flutter/foundation.dart';
import 'Task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  final List<Task> _taskList = [
    Task(name: 'milk'),
    Task(name: 'apple'),
    Task(name: 'bread'),
  ];

  UnmodifiableListView<Task> get taskList {
    return UnmodifiableListView(_taskList);
  }

  int get taskCount {
    return _taskList.length;
  }

  void addTask(String newTitle) {
    final newTask = Task(name: newTitle);
    _taskList.add(newTask);
    notifyListeners();
  }

  void taskUpdate(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void taskDelete(Task task) {
    _taskList.remove(task);
    notifyListeners();
  }
}
