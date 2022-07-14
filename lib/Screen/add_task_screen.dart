// ignore_for_file: camel_case_types, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todo_flutter/Models/TaskData.dart';
import 'package:todo_flutter/constant.dart';
import 'package:provider/provider.dart';

class Add_Task extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newText;
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
            TextField(
              decoration: kInputDecorationCustomTextField,
              onChanged: (valueText) {
                newText = valueText;
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(newText!);
                Navigator.pop(context);
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
