// ignore_for_file: use_key_in_widget_constructors
//local state + global state + Callback in Dart
import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task.',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        isChecked: isChecked,
        isCheckBox: (bool checkboxState) {
          setState(
            () {
              isChecked = checkboxState;
            },
          );
        },
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  const TaskCheckBox({required this.isChecked, this.isCheckBox});
  final bool isChecked; //bool value
  final Function(bool)? isCheckBox; //function for onChanged

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: () {
        isCheckBox!();
      },
    );
    /*
          isCheckBox Function
          (bool checkboxState) {
            setState(() {
              isChecked = checkboxState;
            });
          */
  }
}
