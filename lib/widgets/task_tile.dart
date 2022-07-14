// ignore_for_file: use_key_in_widget_constructors, avoid_print
//local state + global state + Callback in Dart
import 'dart:async';

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({
    required this.taskTitle,
    required this.isChecked,
    this.checkBoxCallBack,
    this.deleteBoxCallBack,
  });

  final bool isChecked;
  final String taskTitle;
  final Function? checkBoxCallBack;
  final Function? deleteBoxCallBack;
  late Timer timer;
  bool isLongPressed = false;
  void startOperation(valueOnTapDown) {
    timer = Timer(const Duration(seconds: 2), () {
      print('long Pressed Event');
      isLongPressed = true;
      deleteBoxCallBack!();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: GestureDetector(
        onTapDown: (value_0) {
          startOperation(value_0);
        },
        onTapUp: (value_1) {
          timer.cancel();
          if (!isLongPressed) {
            print("Is a onTap event");
          } else {
            isLongPressed = false;
          }
        },
        child: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (value) {
          checkBoxCallBack!();
        },
      ),
    );
  }
}
